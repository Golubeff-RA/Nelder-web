FROM ubuntu:latest

# Устанавливаем необходимые пакеты
RUN apt-get update && \
    apt-get install -y \
    g++ \
    cmake \
    make \
    python3.12-venv \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN python3 -m venv .venv
ENV VIRTUAL_ENV=/app/.venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
# Устанавливаем библиотеки Python
RUN pip install --no-cache-dir matplotlib gradio
COPY . .

# Создаем директорию для сборки и собираем проект
RUN mkdir build && \
    cd build && \
    cmake ../ && \
    make NelderMeadSolver

CMD ["python3", "/app/PythonFrontend/frontend.py"]