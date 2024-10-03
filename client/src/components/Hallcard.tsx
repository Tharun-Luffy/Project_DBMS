import { useState, useEffect } from "react";
import { Card, CardContent, CardFooter } from "../components/ui/card";
import { Button } from "../components/ui/button";

interface HallCardProps {
  hallName: string;
}

const HallCard = ({ hallName }: HallCardProps) => {
  return (
    <Card className="w-full max-w-md mx-auto">
      <CardContent className="pt-6">
        <h2 className="text-2xl font-bold text-center mb-4">{hallName}</h2>
      </CardContent>

      <CardFooter>
        <Button onClick={console.log("Hi")} className="w-full">
          Book Now
        </Button>
      </CardFooter>
    </Card>
  );
};

const HallList = () => {
  const [halls, setHalls] = useState<HallCardProps[]>([]);

  useEffect(() => {
    fetch("http://localhost:3000/api/halls")
      .then((response) => response.json())
      .then((data) => {
        const mappedHalls = data.map((hall: any) => ({
          hallName: hall.hall_name,
        }));
        setHalls(mappedHalls);
      })
      .catch((error) => {
        console.error("Error fetching halls:", error);
      });
  }, []);

  return (
    <div className="space-y-6">
      {halls.map((hall, index) => (
        <HallCard key={index} hallName={hall.hallName} />
      ))}
    </div>
  );
};

export default HallList;
