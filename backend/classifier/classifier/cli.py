"""
Kick off various maintenance tasks
"""
import click
from .commands.classify import classify
from .commands.build import build
from .commands.diagnostics import diagnostics
from .commands.entities import entities
from .commands.seed import seed
from .commands.targeting import targeting
from .commands.add_seeds_from_id import add_seeds_from_id
from .commands.add_seeds_from_advertiser import add_seeds_from_advertiser


@click.group()
@click.option("--base", default="data", help="Path to the data directory")
@click.pass_context
def cli(ctx, base):
    """
    classify: run various tasks for classification
    """
    ctx.obj["base"] = click.format_filename(base)


cli.add_command(classify)
cli.add_command(build)
cli.add_command(diagnostics)
cli.add_command(entities)
cli.add_command(seed)
cli.add_command(targeting)
cli.add_command(add_seeds_from_id)
cli.add_command(add_seeds_from_advertiser)
