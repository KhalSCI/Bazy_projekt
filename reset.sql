
-- ===================================
-- Script do usunięcia wszystkich tabel
-- ===================================

-- Usunięcie tabel w odpowiedniej kolejności (od zależnych do głównych)
-- Najpierw tabele z kluczami obcymi
DROP TABLE Zapisy CASCADE CONSTRAINTS;
DROP TABLE Przedmioty CASCADE CONSTRAINTS;
DROP TABLE Studenci CASCADE CONSTRAINTS;
DROP TABLE Wykladowcy CASCADE CONSTRAINTS;
DROP TABLE Semestry CASCADE CONSTRAINTS;
DROP TABLE Kierunki CASCADE CONSTRAINTS;

-- Potwierdzenie zmian
COMMIT;

-- Sprawdzenie czy tabele zostały usunięte
SELECT table_name
FROM user_tables
WHERE table_name IN ('STUDENCI', 'PRZEDMIOTY', 'SEMESTRY', 'ZAPISY', 'KIERUNKI', 'WYKLADOWCY')
ORDER BY table_name;

-- ===================================