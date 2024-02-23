defmodule MySuperAppWeb.HomeLive do
    use Phoenix.LiveView
    import Surface
    import MoonWeb.Helpers.Lorem

    alias Moon.Design.Accordion
    alias Moon.Autolayouts.TopToDown
    alias Moon.Components.Heading
    alias Moon.Design.Button
    alias Moon.Design.MenuItem
    alias Moon.Design.MenuItem 
    alias Moon.Lego
    alias Moon.Icons.{
      TravelAirplane,
      TravelBill,
      GenericLoyalty,
      DevicesJoystick
}
  
    @spec render(map()) :: Phoenix.LiveView.Rendered.t()
    def render(assigns) do
      ~F"""
        <TopToDown class="max-w-sm p-4 m-auto gap-4 bg-chichi"   >
          <Heading size={24} class="text-right" is_regular>Hexy!</Heading>
          <Button size="xl" >First Moon Button</Button>
          <Button animation="progress" class="bg-chichi">Progress</Button>
          <Button left_icon="generic_globe" size="xl" as="a"  href="https://www.google.com/" class="rounded-moon-s-lg">
            Google
          </Button>

        </TopToDown>

        <div class="flex w-full">
          <div class="w-94 bg-goku flex flex-col gap-3 rounded-moon-s-lg p-6">
            <MenuItem is_active>
              <span class="bg-piccolo/20 rounded-lg w-10 h-10 flex justify-center items-center">
                <TravelAirplane class="text-2xl text-piccolo" />
              </span>
              <Lego.MultiTitle title="Job Board" text="find your dream design job" />
            </MenuItem>
            <MenuItem>
              <span class="bg-chichi/20 rounded-lg w-10 h-10 flex justify-center items-center">
                <TravelBill class="text-2xl text-chichi" />
              </span>
              <Lego.MultiTitle title="Freelance Projects" text="An exclusive list for contract work" />
            </MenuItem>
            <hr class="w-80 border-px border-solid border-beerus left-6 top-40  self-stretch">
            <MenuItem>
              <span class="bg-raditz/20 rounded-lg w-10 h-10 flex justify-center items-center">
                <GenericLoyalty class="text-2xl text-raditz" />
              </span>
              <Lego.MultiTitle
                title="Want freelance design projects?"
                text="Get new leads in your inbox every day"
              />
            </MenuItem>
            <MenuItem>
              <span class="bg-frieza/20 rounded-lg w-10 h-10 flex justify-center items-center">
                <DevicesJoystick class="text-2xl text-frieza" />
              </span>
              <Lego.MultiTitle
                title="Personalized your profile with video"
                text="Introduce yourself to new clients with Pitch"
              />
            </MenuItem>
          </div>
        </div>

            <Accordion id="simple-accordion"  >
              <Accordion.Item  >
                <Accordion.Header   title="Lorem"/>
                  <Accordion.Content>{lorem()}</Accordion.Content>
                    </Accordion.Item>
                      <Accordion.Item>
                      <Accordion.Header class="bg-beerus" " >Beerus bg</Accordion.Header>
                      <Accordion.Content class="bg-beerus">{ipsum()}</Accordion.Content>
                      </Accordion.Item>
                    <Accordion.Item>
                   <Accordion.Header  >Dolor</Accordion.Header>
                  <Accordion.Content>{dolor()}</Accordion.Content>
               </Accordion.Item>
             </Accordion>
      

      """
    end
  end



 