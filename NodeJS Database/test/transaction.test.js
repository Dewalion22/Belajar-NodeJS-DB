import {prismaClient} from "../src/prisma-client.js";


describe("Prisma Client", () => {

    it("should can excecute sequential transactions", async () => {
        const [eko, kurniawan] = await prismaClient.$transaction([
            prismaClient.customer.create({
                data:{
                    id: "eko1",
                    email: "eko1@pzn.com",
                    name: "Eko",
                    phone: "2533453453234324543"
                }
            }),
            prismaClient.customer.create({
                data: {
                    id: "kurniawan1",
                    email: "kurniawan1@pzn.com",
                    name: "Kurniawan",
                    phone: "345345354324234"
                }
            })
        ], {
                timeout: 5
            })
        expect(eko.name).toBe("Eko");
        expect(kurniawan.name).toBe("Kurniawan");
    });
    it("should can excecute interactive transaction", async () => {
        const [eko, kurniawan] = await prismaClient.$transaction(async  (prisma)=>{
            const eko = await prisma.customer.create({
                data: {
                    id: "eko2",
                    email: "eko2@pzn.com",
                    name: "Eko",
                    phone: "56456464565"
                }
            })
            const kurniawan = await prisma.customer.create({
                data: {
                    id: "kurniawan2",
                    email: "kurniawan2@pzn.com",
                    name: "Kurniawan",
                    phone: "4356345345"
                }
            })
            return [eko, kurniawan];

        },{
            timeout: 5
        })
    })




})