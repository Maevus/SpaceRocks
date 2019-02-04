// gradually fade away and destroy once fully transparent
image_alpha = image_alpha - 0.01;
if(image_alpha <=0) { // good practice <= 0
	instance_destroy();	
}	