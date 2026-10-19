<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<footer id="contato" class="circuit-bg">
	<div class="container">
		<div class="row g-4">

			<div class="col-lg-5">
				<h5>
					<i class="fa-solid fa-microchip me-2" style="color: var(- -neon)"></i>
					<fmt:message key="footer.lab.nome" />
				</h5>
				<p class="mt-3 mb-2">
					<fmt:message key="footer.instituicao" />
				</p>
				<a href="https://www.instagram.com/robotican.cg" target="_blank"
					rel="noopener" class="btn btn-outline-neon btn-sm mt-2"> <i
					class="fa-brands fa-instagram me-1"></i> @robotican.cg
				</a>
			</div>

			<div class="col-6 col-lg-3">
				<h5>
					<fmt:message key="footer.nav.titulo" />
				</h5>
				<ul class="list-unstyled mt-3 mb-0">
					<li class="mb-1"><a href="#"><fmt:message
								key="footer.nav.inicio" /></a></li>
					<li class="mb-1"><a href="#"><fmt:message
								key="footer.nav.sobre" /></a></li>
					<li class="mb-1"><a href="#"><fmt:message
								key="footer.nav.estudantes" /></a></li>
					<li class="mb-1"><a href="#"><fmt:message
								key="footer.nav.atividades" /></a></li>
					<li class="mb-1"><a href="#"><fmt:message
								key="footer.nav.contato" /></a></li>
				</ul>
			</div>

			<div class="col-6 col-lg-4">
				<h5>
					<fmt:message key="footer.idiomas.titulo" />
				</h5>
				<ul class="list-unstyled mt-3 mb-0">
					<li class="mb-1"><a
						href="${pageContext.request.contextPath}/i18n?lingua=pt_BR"> <fmt:message
								key="idioma.portugues" />
					</a></li>
					<li class="mb-1"><a
						href="${pageContext.request.contextPath}/i18n?lingua=en_US"> <fmt:message
								key="idioma.ingles" />
					</a></li>
					<li class="mb-1"><a
						href="${pageContext.request.contextPath}/i18n?lingua=es_ES"> <fmt:message
								key="idioma.espanhol" />
					</a></li>
					<li class="mb-1"><a
						href="${pageContext.request.contextPath}/i18n?lingua=fr_FR"> <fmt:message
								key="idioma.frances" />
					</a></li>
				</ul>
			</div>
		</div>

		<hr class="my-4">

		<div class="d-flex flex-wrap justify-content-between gap-2 small">
			<span><fmt:message key="footer.copyright" /></span> <span> <fmt:message
					key="footer.desenvolvido" /> <strong class="text-white">Integrante
					1</strong> <fmt:message key="footer.e" /> <strong class="text-white">Integrante
					2</strong> · <fmt:message key="footer.curso" />
			</span>
		</div>
	</div>
</footer>