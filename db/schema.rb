# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_10_003910) do
  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "telefone"
    t.string "email"
    t.date "dataNascimento"
    t.string "cidade"
    t.string "bairro"
    t.string "logradouro"
    t.string "cep"
    t.string "complemento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.date "dataInicio"
    t.date "dataTermino"
    t.float "duracaoTotalServico"
    t.float "valorTotal"
    t.boolean "finalizado"
    t.integer "cliente_id", null: false
    t.integer "servico_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_contratos_on_cliente_id"
    t.index ["servico_id"], name: "index_contratos_on_servico_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.float "valor"
    t.integer "trabalhador_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trabalhador_id"], name: "index_servicos_on_trabalhador_id"
  end

  create_table "trabalhadors", force: :cascade do |t|
    t.string "nome"
    t.string "cpf_or_cnpj"
    t.string "telefone"
    t.string "email"
    t.date "dataNascimento"
    t.string "profissao"
    t.string "cidade"
    t.string "bairro"
    t.string "logradouro"
    t.string "cep"
    t.string "complemento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email"
    t.string "senha"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contratos", "clientes"
  add_foreign_key "contratos", "servicos"
  add_foreign_key "servicos", "trabalhadors"
end
