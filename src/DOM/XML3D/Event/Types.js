"use strict";

exports.field = function (a) {
    return function(e) {
	var r = e.detail;
	for (var i = 0; i < a.length; i++)
	    r = r[a[i]];
	return r;
    };
};
