.PHONY: all run check status reset

# Si escriben solo 'make', ejecutará 'make run' por defecto
all: run

# Lanza el Game Master interactivo
run:
	@./git-gud

# Lanza el evaluador de forma manual
check:
	@./check

# Atajo útil para ver el árbol de ramas en cualquier momento
status:
	@git --no-pager log --graph --oneline --all

# Reinicia el progreso del juego y limpia el repositorio
reset:
	@echo "🔥 Quemando las naves y reiniciando el entorno..."
	@rm -f .ctf_state
	@rm -rf .lvl4_sim 2>/dev/null
	@git checkout main 2>/dev/null || true
	@git reset --hard origin/main 2>/dev/null || true
	@git clean -fd 2>/dev/null
	@git branch -D fix-norminette 2>/dev/null || true
	@git branch -D compañero-rama 2>/dev/null || true
	@echo "✅ Entorno limpio y purgado. Ejecuta 'make run' para empezar de cero."