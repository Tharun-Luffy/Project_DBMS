async function getHalls() {
  const res = await fetch("http://localhost:3000/");
  const data = await res.json();
  const mappedHalls = data.map((hall: any) => ({
    id: hall.hall_id,
    hallName: hall.hall_name,
    acc: hall.hall_accommodation,
    price: hall.hall_price,
    ht: hall.hall_tags,
  }));
  return mappedHalls;
}

export default function useDB() {
  return { getHalls };
}
