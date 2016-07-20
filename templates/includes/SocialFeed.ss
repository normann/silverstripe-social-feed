<div>
	<ol>
		<% loop SocialFeed %>
			<li>
				<a href="$URL" target="_blank">
					<h4>Type: $Type</h4>
					<p>Created: $Created</p>

					<%-- Facebook Post --%>
					<% if $Type == 'facebook' %>
						<p>$Data.message</p>
						<% if $Data.picture %>
							<p><img src="$Data.picture" alt=""></p>
						<% end_if %>

					<%-- Twitter Post --%>
					<% else_if $Type == 'twitter' %>
						<p>URL: $URL</p>
						<p>$Data.text</p>
					<%-- Instagram Post --%>
					<% else_if $Type == 'instagram' %>

					<% end_if %>
				</a>
			</li>
		<% end_loop %>
	</ol>
</div>
