# Money App (quasar-money-app)

Budged App

## Install the dependencies

```bash
yarn
# or
npm install
```

### Start the app in development mode (hot-code reloading, error reporting, etc.)

```bash
quasar dev
```

### Lint the files

```bash
yarn lint
# or
npm run lint
```

### Format the files

```bash
yarn format
# or
npm run format
```

### Build the app for production

```bash
quasar build
```

### Customize the configuration

See [Configuring quasar.config.js](https://v2.quasar.dev/quasar-cli-vite/quasar-config-js).

## Application Features

Money App is a modern budget tracking application built with Quasar and Vue 3. It allows users to manage their financial entries with a clean, intuitive interface.

### User Interface & Functionality

- **Authentication System**

  - User registration and login via Supabase
  - Secure authentication handling and session management
  - Protected routes for authenticated users

- **Entries Management**

  - Create, read, update, and delete financial entries
  - Each entry includes name, amount, and payment status
  - Drag-and-drop reordering with persistent order
  - Swipe actions for quick entry management
  - Real-time updates using Supabase Realtime

- **Financial Tracking**

  - Balance calculation for all entries
  - Running balances to track financial progression
  - Paid vs. unpaid amount tracking

- **UI/UX Features**

  - Dark and light mode support with theme switching
  - Responsive design for mobile and desktop
  - Animated transitions for a polished user experience
  - Custom directives for field selection and autofocus
  - Dynamic styling and formatting for monetary amounts

- **Data Persistence**
  - Supabase integration for backend storage
  - User-specific data handling
  - Realtime synchronization across devices

### Technical Implementation

- **State Management**

  - Pinia stores for organized state management
  - Separate stores for entries, authentication, and settings

- **Reactive Programming**

  - Vue 3 Composition API with TypeScript
  - Reactive state and computed properties

- **User Experience**
  - Form validation
  - Loading indicators
  - Success and error notifications

## Deployment with GitHub Actions

This project uses GitHub Actions for automated deployment to Vercel across different environments.

### Workflow Configuration

#### Development Workflow

- **Trigger**: Push to or pull request against the `develop` branch
- **Environment**: Development/Preview
- **Features**:
  - Node.js 20 setup with npm cache
  - Dependency installation
  - Code linting
  - Quasar app build
  - Deployment to Vercel preview environment

#### Staging Workflow

- **Trigger**: Push to or pull request against the `staging` branch
- **Environment**: Staging/Preview
- **Features**:
  - Node.js 20 setup with npm cache
  - Dependency installation
  - Code linting
  - Quasar app build
  - Deployment to Vercel preview environment

#### Production Workflow

- **Trigger**:
  - Push to the `main` branch
  - Manual trigger with reason input
- **Environment**: Production
- **Features**:
  - Node.js 20 setup with npm cache
  - Dependency installation
  - Code linting
  - Quasar app build
  - Deployment to Vercel production environment
  - Automatic GitHub release creation with version tag

### Vercel Configuration

The repository includes a `vercel.json` configuration file that:

- Handles SPA routing for the Quasar application
- Specifies the build command as `quasar build`
- Sets the output directory to `dist/spa`

### Setup Requirements

To use these workflows, you need to:

1. **Vercel Setup**:

   - Connect your repository to Vercel
   - Create a Vercel API token
   - Add the token as a `VERCEL_TOKEN` secret in your GitHub repository settings

2. **Branch Setup**:
   - Use the three branches to match the workflow triggers:
     - `develop` for development work
     - `staging` for pre-production testing
     - `main` for production deployments

### CI/CD Pipeline

These workflows create a complete CI/CD pipeline:

- **Feature Development**: Work on feature branches → PR to `develop` → Automated PR preview deployment
- **Integration Testing**: Merge to `develop` → Automated deployment to development environment
- **Pre-release Validation**: Promote to `staging` → Automated deployment to staging environment
- **Production Release**: Promote to `main` → Automated deployment to production environment with release tag
