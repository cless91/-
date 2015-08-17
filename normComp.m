function _return = normComp(u, v, M)

	_return = (u' * M * v) / (v' * M * v);

endfunction
