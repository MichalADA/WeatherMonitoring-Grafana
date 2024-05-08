# WeatherMonitoring-Grafana
Api - OpenWeatherMap , python , InfluxDB , Grafana 


Opis
System monitorowania pogody zaimplementowany z użyciem dwóch serwerów Linux na AWS. Pierwszy serwer uruchamia cyklicznie skrypty Python w kontenerach Docker, które pobierają i przetwarzają dane pogodowe z API. Drugi serwer hostuje Grafanę również w Dockerze, zapewniając interfejs użytkownika do wizualizacji danych pogodowych. Całość infrastruktury jest automatycznie wdrażana przy użyciu Terraform.

Funkcjonalności
Automatyczne pobieranie danych pogodowych: Skrypty Python są uruchamiane w kontenerach Docker, pobierając dane z API pogodowego.
Wizualizacja danych: Grafana w kontenerze Docker na osobnym serwerze prezentuje dane w formie graficznej.
Automatyzacja infrastruktury: Użycie Terraform do wdrożenia i zarządzania infrastrukturą na AWS.
Technologie
Python & Docker: Skrypty do pobierania i przetwarzania danych uruchamiane w kontenerach Docker.
Grafana & Docker: Wizualizacja danych w kontenerach Docker.
Terraform: Automatyzacja konfiguracji i wdrażania infrastruktury na AWS.
AWS: Hosting serwerów Linux.
Instalacja i wdrożenie
Konfiguracja Terraform
Instalacja Terraform: Upewnij się, że masz zainstalowany Terraform.
Konfiguracja Terraform: Skonfiguruj Terraform, aby zarządzać zasobami AWS. W plikach konfiguracyjnych Terraform zdefiniuj wymagane zasoby takie jak instancje EC2, sieci VPC, grupy bezpieczeństwa itp.
Uruchomienie skryptów Python w Dockerze
Przygotowanie Dockerfile: Utwórz Dockerfile dla obrazu zawierającego skrypty Python.
Budowanie obrazu: Zbuduj obraz Docker lokalnie lub w rejestrze obrazów.
Uruchamianie kontenerów: Skonfiguruj Terraform, aby uruchamiał kontenery Docker z tym obrazem na odpowiedniej instancji EC2.
Konfiguracja Grafana w Dockerze
Przygotowanie Dockerfile dla Grafana: Utwórz Dockerfile dla Grafany.
Budowanie i uruchamianie: Podobnie jak dla skryptów Python, zbuduj obraz i skonfiguruj Terraform do uruchamiania Grafany w kontenerze Docker.
Użycie
Dostęp do Grafana: Po wdrożeniu, Grafana będzie dostępna przez przeglądarkę internetową na przypisanym adresie IP lub domenie.
Monitorowanie danych pogodowych: Użytkownicy mogą korzystać z dashboardów Grafana do monitorowania aktualnych i historycznych danych pogodowych.
