<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package SantaCloud-market
 */

get_header();
?>

	<main id="primary" class="site-main">

		<?php
			echo("<h2>".$_SERVER['HTTP_HOST']."</h2>");
		?>

	</main><!-- #main -->

<?php
get_footer();
