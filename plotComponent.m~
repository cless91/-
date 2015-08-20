function _return = plotComponent(a, b, c, linestyle, linewidth, color)
	
line1 = createLine(a(1), a(2), b(1), b(2));
line2 = createLine(0, 0, c(1), c(2));
point = intersectLines(line1, line2);
plot([a(1) point(1)], [a(2) point(2)],'linestyle', linestyle, 'linewidth', linewidth, 'color', color);

endfunction
