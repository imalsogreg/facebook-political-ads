import React from "react";
import Enzyme, { mount } from "enzyme";
import Adapter from "enzyme-adapter-react-16";
import { FiltersUnconnected, Filter } from "../../src/components/filters.jsx";
import { go } from "i18n.js";

Enzyme.configure({ adapter: new Adapter() });

function setup(newProps = {}) {
  const props = {
    ...{},
    ...newProps
  };

  const enzymeWrapper = mount(<FiltersUnconnected {...props} />);

  return {
    props,
    enzymeWrapper
  };
}

describe("components", () => {
  describe("FiltersUnconnected", () => {
    it("should render self", () => {
      go(() => {
        const { enzymeWrapper } = setup();
        expect(enzymeWrapper.find(".filters").exists()).toBe(true);
      });
    });
    it("should render at least one Filter item", () => {
      go(() => {
        const { enzymeWrapper } = setup();
        expect(enzymeWrapper.find(".filter").exists()).toBe(true);
      });
    });
  });
});
