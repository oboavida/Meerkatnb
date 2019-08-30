import "bootstrap";
import "../plugins/flatpickr"
import { initStarRating } from '../plugins/init_star_rating';
import { initImagePreview } from '../plugins/image-preview';
import { automaticScroll } from '../plugins/scroll';

initStarRating();
initImagePreview();
automaticScroll();