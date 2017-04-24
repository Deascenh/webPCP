	    </div> <!-- col-lg-9 -->
		<div class="col-lg-3">
            <div class="wrapper wrapper-content project-manager">
				<ul class="list-unstyled small">
				<?php foreach($listActivites as $listActivite) : ?>
					<li><a href="/portefeuille/activite/?id=<?= $listActivite['id'] ?>"><strong><?= $listActivite['reference'] ?></strong> - <?= $listActivite['libelle'] ?></a></li>
					<hr class="m-xxs m-b-xs">
				<?php endforeach ?>
				</ul>
			</div>
		</div>
	</div>
 </div> <!-- Fermeture de wrapper wrapper-content -->
 <div class="footer">
	<div>
		&nbsp;
		<span class="pull-right">
			<strong>Developped by</strong> Thibault Moulin <small>2016-2017</small>
		</span>
		
	</div>
</div>

</div>

    <!-- scripts Javascript -->
    <script src="/includes/js/jquery-2.1.1.js"></script>
    <script src="/includes/js/bootstrap.min.js"></script>
    <script src="/includes/js/inspinia.js"></script>

	<!-- scripts Plugin Inspinia -->
		<!-- Animation replis menu -->
		<script src="/includes/js/plugins/metisMenu/jquery.metisMenu.js"></script>
		<script src="/includes/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom -->
	<script src="/includes/js/app/main.js"></script>

</body>

</html>