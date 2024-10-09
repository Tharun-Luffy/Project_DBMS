import useDB from "@/hooks/useDB";
import { useEffect, useState } from "react";
import HallCard, { HallCardProps } from "./HallCard";

export default function HallsView() {
  const [halls, setHalls] = useState<HallCardProps[]>([]);
  const db = useDB();

  useEffect(() => {
    const fetchData = async () => setHalls(await db.getHalls());
    fetchData();
  }, []);

  return (
    <div className="space-y-6">
      {halls.map((hall) => (
        <HallCard key={hall.id} {...hall} />
      ))}
    </div>
  );
}
