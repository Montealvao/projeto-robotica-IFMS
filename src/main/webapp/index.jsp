<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<t:layout titulo="index">

	<jsp:include page="/WEB-INF/includes/header.jsp" />

	<header class="hero circuit-bg">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-8">
					<span class="tag mb-3"><i
						class="fa-solid fa-circle-nodes me-1"></i> <fmt:message
							key="hero.campus" /></span>
  
					<h1 class="mt-3">
						<fmt:message key="hero.titulo.part1" />
						<span><fmt:message key="hero.titulo.destaque" /></span>
						<fmt:message key="hero.titulo.part2" />
					</h1>

					<p class="lead mt-3">
						<fmt:message key="hero.desc" />
					</p>

					<div class="d-flex flex-wrap gap-2 mt-4">
						<a
							href="${pageContext.request.contextPath}/atividade/index.example.jsp"
							class="btn btn-neon px-4"><i
							class="fa-solid fa-diagram-project me-2"></i>
						<fmt:message key="hero.btn.atividades" /></a> <a
							href="${pageContext.request.contextPath}/publico/equipe.jsp"
							class="btn btn-outline-neon px-4"><i
							class="fa-solid fa-people-group me-2"></i>
						<fmt:message key="hero.btn.equipe" /></a>
					</div>
					<div class="d-flex flex-wrap gap-2 mt-4">
						<span class="chip"><i class="fa-solid fa-graduation-cap"></i>
						<fmt:message key="hero.chip.ensino" /></span> <span class="chip"><i
							class="fa-solid fa-flask"></i>
						<fmt:message key="hero.chip.pesquisa" /></span> <span class="chip"><i
							class="fa-solid fa-handshake-angle"></i>
						<fmt:message key="hero.chip.extensao" /></span> <span class="chip"><i
							class="fa-solid fa-lightbulb"></i>
						<fmt:message key="hero.chip.inovacao" /></span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- ================= O QUE VOCÊ ENCONTRA ================= -->
	<section class="block">
		<div class="container">
			<span class="sec-label"><fmt:message key="sec.explore.label" /></span>
			<h2 class="sec-title">
				<fmt:message key="sec.explore.titulo" />
			</h2>

			<div class="row g-4 mt-2">
				<div class="col-md-6 col-lg-3">
					<a href="${pageContext.request.contextPath}/publico/sobre.jsp"
						class="d-block h-100">
						<div class="tcard">
							<div class="ico">
								<i class="fa-solid fa-clock-rotate-left"></i>
							</div>
							<h3>
								<fmt:message key="explore.sobre.titulo" />
							</h3>
							<p>
								<fmt:message key="explore.sobre.desc" />
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3">
					<a href="${pageContext.request.contextPath}/estudante/index.jsp"
						class="d-block h-100">
						<div class="tcard">
							<div class="ico">
								<i class="fa-solid fa-user-astronaut"></i>
							</div>
							<h3>
								<fmt:message key="explore.estudantes.titulo" />
							</h3>
							<p>
								<fmt:message key="explore.estudantes.desc" />
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3">
					<a
						href="${pageContext.request.contextPath}/atividade/index.example.jsp"
						class="d-block h-100">
						<div class="tcard">
							<div class="ico">
								<i class="fa-solid fa-diagram-project"></i>
							</div>
							<h3>
								<fmt:message key="explore.atividades.titulo" />
							</h3>
							<p>
								<fmt:message key="explore.atividades.desc" />
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3">
					<a href="${pageContext.request.contextPath}/publico/contato.jsp"
						class="d-block h-100">
						<div class="tcard">
							<div class="ico">
								<i class="fa-solid fa-satellite-dish"></i>
							</div>
							<h3>
								<fmt:message key="explore.contato.titulo" />
							</h3>
							<p>
								<fmt:message key="explore.contato.desc" />
							</p>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>

	<!-- ================= DESTAQUES: ATIVIDADES ================= -->
	<section class="block alt">
		<div class="container">
			<div
				class="d-flex justify-content-between align-items-end flex-wrap gap-2">
				<div>
					<span class="sec-label"><fmt:message
							key="sec.destaque.label" /></span>
					<h2 class="sec-title">
						<fmt:message key="sec.destaque.titulo" />
					</h2>
				</div>
				<a
					href="${pageContext.request.contextPath}/atividade/index.example.jsp"
					class="mb-3"><fmt:message key="btn.ver.todas" /> <i
					class="fa-solid fa-arrow-right ms-1"></i></a>
			</div>

			<div class="row g-4 mt-1">
				<div class="col-md-6">
					<div class="tcard">
						<div class="d-flex justify-content-between mb-2">
							<span class="badge badge-type px-2 py-1"><fmt:message
									key="badge.projeto" /></span> <span
								class="badge badge-status px-2 py-1"><fmt:message
									key="badge.andamento" /></span>
						</div>
						<h3>
							<fmt:message key="ativ.negrotica26.titulo" />
						</h3>
						<p>
							<fmt:message key="ativ.negrotica26.desc" />
						</p>
						<hr style="border-color: var(--line); opacity: 1">
						<div class="d-flex justify-content-between small text-muted-2">
							<span><i class="fa-regular fa-calendar me-1"></i>2026/1 ·
								2026/2</span> <a
								href="${pageContext.request.contextPath}/atividade/atividade-detalhe.jsp"><fmt:message
									key="btn.detalhes" /> <i class="fa-solid fa-arrow-right"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="tcard">
						<div class="d-flex justify-content-between mb-2">
							<span class="badge badge-type px-2 py-1"><fmt:message
									key="badge.estagio" /></span> <span
								class="badge badge-status px-2 py-1"><fmt:message
									key="badge.andamento" /></span>
						</div>
						<h3>
							<fmt:message key="ativ.estagio262.titulo" />
						</h3>
						<p>
							<fmt:message key="ativ.estagio262.desc" />
						</p>
						<hr style="border-color: var(--line); opacity: 1">
						<div class="d-flex justify-content-between small text-muted-2">
							<span><i class="fa-regular fa-calendar me-1"></i>2026/2</span> <a
								href="${pageContext.request.contextPath}/atividade/atividade-detalhe.jsp"><fmt:message
									key="btn.detalhes" /> <i class="fa-solid fa-arrow-right"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="tcard">
						<div class="d-flex justify-content-between mb-2">
							<span class="badge badge-type px-2 py-1"><fmt:message
									key="badge.estagio" /></span> <span
								class="badge badge-status px-2 py-1"
								style="color: var(--neon); background: var(--neon-dim); border-color: rgba(25, 230, 180, .35)"><fmt:message
									key="badge.concluida" /></span>
						</div>
						<h3>
							<fmt:message key="ativ.estagio261.titulo" />
						</h3>
						<p>
							<fmt:message key="ativ.estagio261.desc" />
						</p>
						<hr style="border-color: var(--line); opacity: 1">
						<div class="d-flex justify-content-between small text-muted-2">
							<span><i class="fa-regular fa-calendar me-1"></i>2026/1</span> <a
								href="${pageContext.request.contextPath}/atividade/atividade-detalhe.jsp"><fmt:message
									key="btn.detalhes" /> <i class="fa-solid fa-arrow-right"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="tcard">
						<div class="d-flex justify-content-between mb-2">
							<span class="badge badge-type px-2 py-1"><fmt:message
									key="badge.projeto" /></span> <span
								class="badge badge-status px-2 py-1"
								style="color: var(--neon); background: var(--neon-dim); border-color: rgba(25, 230, 180, .35)"><fmt:message
									key="badge.concluida" /></span>
						</div>
						<h3>
							<fmt:message key="ativ.negrotica25.titulo" />
						</h3>
						<p>
							<fmt:message key="ativ.negrotica25.desc" />
						</p>
						<hr style="border-color: var(--line); opacity: 1">
						<div class="d-flex justify-content-between small text-muted-2">
							<span><i class="fa-regular fa-calendar me-1"></i>2025</span> <a
								href="${pageContext.request.contextPath}/atividade/atividade-detalhe.jsp"><fmt:message
									key="btn.detalhes" /> <i class="fa-solid fa-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ================= CONQUISTA + LINHA DO TEMPO ================= -->
	<section class="block">
		<div class="container">
			<div class="row g-5">
				<div class="col-lg-6">
					<span class="sec-label"><fmt:message
							key="sec.resultados.label" /></span>
					<h2 class="sec-title">
						<fmt:message key="sec.resultados.titulo" />
					</h2>
					<div class="achievement mt-4">
						<div class="d-flex gap-3 align-items-start">
							<div class="trophy">
								<i class="fa-solid fa-trophy"></i>
							</div>
							<div>
								<span class="badge badge-status px-2 py-1 mb-2">2025</span>
								<h3 class="h5 text-white">
									<fmt:message key="conquista.obr.titulo" />
								</h3>
								<p class="text-muted-2 mb-0">
									<fmt:message key="conquista.obr.desc" />
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<span class="sec-label"><fmt:message
							key="sec.trajetoria.label" /></span>
					<h2 class="sec-title">
						<fmt:message key="sec.trajetoria.titulo" />
					</h2>
					<div class="timeline mt-4">
						<div class="t-item">
							<div class="when">2025</div>
							<h4>
								<fmt:message key="timeline.25.titulo" />
							</h4>
							<p>
								<fmt:message key="timeline.25.desc" />
							</p>
						</div>
						<div class="t-item">
							<div class="when">2026 / 1</div>
							<h4>
								<fmt:message key="timeline.261.titulo" />
							</h4>
							<p>
								<fmt:message key="timeline.261.desc" />
							</p>
						</div>
						<div class="t-item">
							<div class="when">2026 / 2</div>
							<h4>
								<fmt:message key="timeline.262.titulo" />
							</h4>
							<p>
								<fmt:message key="timeline.262.desc" />
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ================= ESTUDANTES ================= -->
	<section class="block alt">
		<div class="container">
			<div
				class="d-flex justify-content-between align-items-end flex-wrap gap-2">
				<div>
					<span class="sec-label"><fmt:message key="sec.pessoas.label" /></span>
					<h2 class="sec-title">
						<fmt:message key="sec.pessoas.titulo" />
					</h2>
				</div>
				<a href="${pageContext.request.contextPath}/estudante/index.jsp"
					class="mb-3"><fmt:message key="btn.ver.todos" /> <i
					class="fa-solid fa-arrow-right ms-1"></i></a>
			</div>

			<div class="row g-4 mt-1">
				<!-- Mock Estudante 1 -->
				<div class="col-md-6 col-lg-4">
					<div class="tcard d-flex gap-3">
						<div class="avatar flex-shrink-0">
							<i class="fa-solid fa-user"></i>
						</div>
						<div>
							<h4>
								<fmt:message key="estudante.mock.nome" />
							</h4>
							<p>
								<fmt:message key="estudante.mock.bio" />
							</p>
							<a
								href="${pageContext.request.contextPath}/estudante/estudante-detalhe.jsp"
								class="small d-inline-block mt-2"><fmt:message
									key="btn.ver.perfil" /></a>
						</div>
					</div>
				</div>
				<!-- Mock Estudante 2 -->
				<div class="col-md-6 col-lg-4">
					<div class="tcard d-flex gap-3">
						<div class="avatar flex-shrink-0">
							<i class="fa-solid fa-user"></i>
						</div>
						<div>
							<h4>
								<fmt:message key="estudante.mock.nome" />
							</h4>
							<p>
								<fmt:message key="estudante.mock.bio" />
							</p>
							<a
								href="${pageContext.request.contextPath}/estudante/estudante-detalhe.jsp"
								class="small d-inline-block mt-2"><fmt:message
									key="btn.ver.perfil" /></a>
						</div>
					</div>
				</div>
				<!-- Mock Estudante 3 -->
				<div class="col-md-6 col-lg-4">
					<div class="tcard d-flex gap-3">
						<div class="avatar flex-shrink-0">
							<i class="fa-solid fa-user"></i>
						</div>
						<div>
							<h4>
								<fmt:message key="estudante.mock.nome" />
							</h4>
							<p>
								<fmt:message key="estudante.mock.bio" />
							</p>
							<a
								href="${pageContext.request.contextPath}/estudante/estudante-detalhe.jsp"
								class="small d-inline-block mt-2"><fmt:message
									key="btn.ver.perfil" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ================= PÚBLICOS / CTA ================= -->
	<section class="block">
		<div class="container">
			<span class="sec-label"><fmt:message key="sec.publicos.label" /></span>
			<h2 class="sec-title">
				<fmt:message key="sec.publicos.titulo" />
			</h2>
			<div class="row g-4 mt-2">
				<div class="col-md-6 col-lg-3">
					<div class="tcard tcard-static">
						<div class="ico">
							<i class="fa-solid fa-graduation-cap"></i>
						</div>
						<h4>
							<fmt:message key="publico.estudantes.titulo" />
						</h4>
						<p>
							<fmt:message key="publico.estudantes.desc" />
						</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="tcard tcard-static">
						<div class="ico">
							<i class="fa-solid fa-school"></i>
						</div>
						<h4>
							<fmt:message key="publico.escolas.titulo" />
						</h4>
						<p>
							<fmt:message key="publico.escolas.desc" />
						</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="tcard tcard-static">
						<div class="ico">
							<i class="fa-solid fa-building-columns"></i>
						</div>
						<h4>
							<fmt:message key="publico.gestao.titulo" />
						</h4>
						<p>
							<fmt:message key="publico.gestao.desc" />
						</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="tcard tcard-static">
						<div class="ico">
							<i class="fa-solid fa-earth-americas"></i>
						</div>
						<h4>
							<fmt:message key="publico.externo.titulo" />
						</h4>
						<p>
							<fmt:message key="publico.externo.desc" />
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>



	<jsp:include page="/WEB-INF/includes/footer.jsp" />

</t:layout>