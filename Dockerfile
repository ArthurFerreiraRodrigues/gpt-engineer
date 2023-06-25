FROM python:3.8

COPY . .

RUN pip3 install --no-cache-dir -r ./requirements.txt

COPY pyproject.toml .
RUN pip install .

RUN export OPENAI_API_KEY=$${OPENAI_API_KEY}

ENTRYPOINT [ "python3" ]
CMD ["./gpt_engineer/main.py", "./prompt/prompt.txt"]