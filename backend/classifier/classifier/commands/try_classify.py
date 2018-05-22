"""
Classify loops through all the ads and save the scores to the database.
"""
import click
import dill
from classifier.utilities import (classifier_path, get_vectorizer,
                                  confs, DB, get_text)

def permute_text(text):
    words = text.split(" ")
    return [(word, text.replace(word, '')) for word in words]



@click.command("try_classify")
@click.option("--newest/--every",
              default=True,
              help="Classify all of the records")
@click.option("--lang", help="Limit to language")
@click.pass_context
def try_classify(ctx, newest, lang):
    """
    Classify the ads in the database at $DATABASE_URL.
    """
    classifiers = dict()
    for (directory, conf) in confs(ctx.obj["base"]):
        with open(classifier_path(directory), 'rb') as classy:
            classifiers[conf["language"]] = {
                "classifier": dill.load(classy),
                "vectorizer": get_vectorizer(conf)
            }
    records = DB.query("""select * from ads where id in (
        '23842870067720127', '6091881423910' 
        )""")

    idx = 0
    for record in records:
        record_lang = "en-CA"
        if record_lang in classifiers:
            classifier = classifiers[record_lang]
            text = get_text(record)
            permuted_texts = permute_text(text)
            vectorized_baseline_text = classifier["vectorizer"].transform([text])
            baseline = classifier["classifier"].predict_proba(vectorized_baseline_text)[0][1]

            # for (deleted_word, permuted_text) in permuted_texts:
            #     vectorized_text = classifier["vectorizer"].transform([permuted_text])
            #     probability = classifier["classifier"].predict_proba(vectorized_text)[0][1]
            #     print("{}: {}".format(baseline - probability, deleted_word))

            modified_text = text.replace("triangle-down triangle-up Like share Share It looks like you may be having problems playing this video. If so, please try restarting your browser. Close", '')
            vectorized_modified_text = classifier["vectorizer"].transform([modified_text])
            probability = classifier["classifier"].predict_proba(vectorized_modified_text)[0][1]
            print("modified probability: {}; original: {}".format(probability, baseline))
