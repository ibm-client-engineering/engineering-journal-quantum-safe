#!/bin/bash

# Function to create a file with frontmatter
create_file_with_frontmatter() {
  local file="$1"
  local title="$2"
  local description="$3"

  echo "---" > "$file"
  echo "title: $title" >> "$file"
  echo "description: $description" >> "$file"
  echo "---" >> "$file"
  echo "" >> "$file"
}

# Create the project directory
mkdir project-name
cd project-name

# Create the strategic-context directory and files
mkdir strategic-context
create_file_with_frontmatter "strategic-context/business-model-canvas.mdx" "Business Model Canvas" "Defines the project's value proposition, customer segments, and revenue streams."
create_file_with_frontmatter "strategic-context/value-proposition.mdx" "Value Proposition" "Describes the unique value provided by the project to its stakeholders."
create_file_with_frontmatter "strategic-context/wardley-map.mdx" "Wardley Map" "Visualizes the project's components, their evolution, and strategic positioning."
create_file_with_frontmatter "strategic-context/strategic-goals.mdx" "Strategic Goals" "Outlines the long-term strategic objectives of the project."

# Create the architecture-and-design directory and files
mkdir -p architecture-and-design/{architecture,design,data}
create_file_with_frontmatter "architecture-and-design/overview.mdx" "Architecture and Design Overview" "Provides a high-level overview of the system architecture and design."

# Create the architecture files
create_file_with_frontmatter "architecture-and-design/architecture/system-context-diagram.mdx" "System Context Diagram" "Illustrates the high-level components and their interactions."
create_file_with_frontmatter "architecture-and-design/architecture/component-diagram.mdx" "Component Diagram" "Shows the internal structure and components of the system."
mkdir architecture-and-design/architecture/sequence-diagrams
create_file_with_frontmatter "architecture-and-design/architecture/sequence-diagrams/sequence-diagram-1.mdx" "Sequence Diagram 1" "Depicts the flow of interactions between components for a specific scenario."
create_file_with_frontmatter "architecture-and-design/architecture/sequence-diagrams/sequence-diagram-2.mdx" "Sequence Diagram 2" "Depicts the flow of interactions between components for another scenario."
create_file_with_frontmatter "architecture-and-design/architecture/evolutionary-architecture.mdx" "Evolutionary Architecture" "Describes the approach to evolutionary architecture and its principles."
mkdir architecture-and-design/architecture/architecture-decision-records
create_file_with_frontmatter "architecture-and-design/architecture/architecture-decision-records/adr-template.mdx" "ADR Template" "Provides a template for documenting architecture decision records."
create_file_with_frontmatter "architecture-and-design/architecture/architecture-decision-records/adr-1.mdx" "ADR 1" "Documents a specific architecture decision record."
create_file_with_frontmatter "architecture-and-design/architecture/architecture-decision-records/adr-2.mdx" "ADR 2" "Documents another architecture decision record."
create_file_with_frontmatter "architecture-and-design/architecture/quality-attributes.mdx" "Quality Attributes" "Defines the desired quality attributes and their prioritization."

# Create the design files
mkdir architecture-and-design/design/domain-driven-design
create_file_with_frontmatter "architecture-and-design/design/domain-driven-design/bounded-contexts.mdx" "Bounded Contexts" "Identifies and defines the bounded contexts within the project."
create_file_with_frontmatter "architecture-and-design/design/domain-driven-design/context-map.mdx" "Context Map" "Illustrates the relationships and interactions between bounded contexts."
create_file_with_frontmatter "architecture-and-design/design/domain-driven-design/ubiquitous-language.mdx" "Ubiquitous Language" "Documents the common language used within the project domain."
create_file_with_frontmatter "architecture-and-design/design/design-principles.mdx" "Design Principles" "Outlines the key principles guiding the system design."
create_file_with_frontmatter "architecture-and-design/design/user-stories.mdx" "User Stories" "Lists the user stories or requirements for the system."
mkdir architecture-and-design/design/use-case-diagrams
create_file_with_frontmatter "architecture-and-design/design/use-case-diagrams/use-case-diagram-1.mdx" "Use Case Diagram 1" "Illustrates the system's functionalities and user interactions."
create_file_with_frontmatter "architecture-and-design/design/use-case-diagrams/use-case-diagram-2.mdx" "Use Case Diagram 2" "Illustrates additional system functionalities and user interactions."
mkdir architecture-and-design/design/wireframes
create_file_with_frontmatter "architecture-and-design/design/wireframes/wireframe-1.mdx" "Wireframe 1" "Provides a visual mockup of a specific user interface screen."
create_file_with_frontmatter "architecture-and-design/design/wireframes/wireframe-2.mdx" "Wireframe 2" "Provides a visual mockup of another user interface screen."
mkdir architecture-and-design/design/data-flow-diagrams
create_file_with_frontmatter "architecture-and-design/design/data-flow-diagrams/data-flow-diagram-1.mdx" "Data Flow Diagram 1" "Shows the flow of data through the system for a specific process."
create_file_with_frontmatter "architecture-and-design/design/data-flow-diagrams/data-flow-diagram-2.mdx" "Data Flow Diagram 2" "Shows the flow of data through the system for another process."

# Create the data files
create_file_with_frontmatter "architecture-and-design/data/data-model.mdx" "Data Model" "Describes the structure and relationships of the system's data entities."

# Create the technical-decisions directory and files
mkdir technical-decisions
create_file_with_frontmatter "technical-decisions/technology-radar.mdx" "Technology Radar" "Assesses and visualizes the adoption of technologies within the project."
create_file_with_frontmatter "technical-decisions/decision-making-process.mdx" "Decision Making Process" "Documents the process and criteria for making technical decisions."

# Create the implementation directory and files
mkdir implementation
create_file_with_frontmatter "implementation/continuous-integration.mdx" "Continuous Integration" "Describes the continuous integration process and tools used."
create_file_with_frontmatter "implementation/continuous-delivery.mdx" "Continuous Delivery" "Documents the continuous delivery pipeline and deployment strategies."
create_file_with_frontmatter "implementation/infrastructure-as-code.mdx" "Infrastructure as Code" "Explains the approach to infrastructure as code and its benefits."
create_file_with_frontmatter "implementation/observability.mdx" "Observability" "Describes the observability practices, including monitoring and logging."

# Create the retrospectives directory
mkdir retrospectives

# Create the contributing file
create_file_with_frontmatter "contributing.mdx" "Contributing Guidelines" "Provides guidelines for contributing to the project."