'use strict';

function Validator(type, isValid, nullable, expects, defaultValue, toJSON) {
    this.type = type;
    this.isValid = isValid;
    this.nullable = nullable || false;
    this.expects = expects || type;
    this.defaultValue = typeof defaultValue !== 'undefined' ? defaultValue : null;
    this._toJSON = toJSON;
}

Validator.prototype.toJSON = function() {
    var json = {
        type: this.type
    };
    if (this._toJSON) {
        json = this._toJSON();
    }
    if (this.nullable) {
        json.optional = true;
        var defaultValue = this.getDefaultValue();
        if (defaultValue !== null) {
            json['default-value'] = defaultValue;
        }
    }
    return json;
};

Validator.prototype.getDefaultValue = function() {
    return this.defaultValue;
};

module.exports = Validator;
