
var attractors = [];
var particles = [];

function setup() {
	createCanvas(400, 400);
}

function mousePressed() {
	attractors.push(createVector(mouseX, mouseY));
}

function draw() {
	background(51);
	strokeWeight(4);

	particles.push(new Particle(random(width), random(height)));

	if (particles.length > 500) {
		particles.splice(0, 1);
	}

	for (var j = 0; j < attractors.length; j++) {
		stroke(0, 255, 0);
		point(attractors[j].x, attractors[j].y);
	}

	for (var i = 0; i < particles.length; i++) {
		var particle = particles[i];
		for (var j = 0; j < attractors.length; j++) {
			particle.attracted(attractors[j], j);
		}

		particle.update();
		particle.show();
	}
}