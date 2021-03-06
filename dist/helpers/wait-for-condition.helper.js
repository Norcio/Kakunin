'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.waitForCondition = exports.waitForInvisibilityOf = exports.waitForVisibilityOf = undefined;

var _config = require('./config.helper');

var _config2 = _interopRequireDefault(_config);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

const timeout = parseInt(_config2.default.elementsVisibilityTimeout) * 1000;

const waitForVisibilityOf = exports.waitForVisibilityOf = element => {
  return waitForCondition('visibilityOf', timeout)(element);
};

const waitForInvisibilityOf = exports.waitForInvisibilityOf = element => {
  return waitForCondition('invisibilityOf', timeout)(element);
};

const waitForCondition = exports.waitForCondition = (condition, timeout) => {
  return element => {
    if (element instanceof protractor.ElementArrayFinder) {
      return browser.wait(protractor.ExpectedConditions[condition](element.first()), timeout);
    }

    return browser.wait(protractor.ExpectedConditions[condition](element), timeout);
  };
};