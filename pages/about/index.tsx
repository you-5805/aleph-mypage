import React from "react";

import { Heading } from "@/components/Heading.tsx";
import { SlideIn } from "@/components/SlideIn.tsx";

const Page: React.VFC = () => {
  return (
    <SlideIn>
      <Heading>About</Heading>
    </SlideIn>
  );
};

export default Page;
