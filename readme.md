# ������� �����:
docker build -t my_hello:1.0 . 

# ��������� ��������� �� ���������� ������:
docker run -itd -p 8080:8080 my_hello:1.0

# ����� �� ����:
http://<YOR_EXTERNAL_IP>:8080/hello-1.0/