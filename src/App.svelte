<script lang="ts">
	import {fly} from 'svelte/transition';

	let text: string;
	let color: string;
	let display: boolean = false;

	window.addEventListener('message', function(event) {
		let data = event.data;

		text = data.text;
		color = data.color;

		if (data.type == 'show_ui') {

			if (typeof(color) == 'undefined') {
				color = 'rgb(52, 152, 219)';
			}

			display = true
		} else if (data.type == 'hide_ui') {
			display = false;
		}
	})
</script>

<main>
	{#if display}
		<div transition:fly="{{x: -200, duration: 500}}" class="container" style='background-color:{color}'>
			<div class="text">{@html text}</div>
		</div>
	{/if}
</main>

<style>
@import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');

.container {
	min-width: 6%;
	min-height: 4%;
	background-color: rgb(52, 152, 219);
	position: absolute;
	left: 1%;
	top: 50%;
	transform: translate(0, -50%);
	border-radius: 5px;
	display: flex;
	justify-content: center;
	align-items: center;
	align-content: center;
}

.text {
	padding: 12px;
	color: white;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	align-content: center;
	font-size: 1.7vh;
	font-family: 'Open Sans', sans-serif;
	text-align: center;
}
</style>
