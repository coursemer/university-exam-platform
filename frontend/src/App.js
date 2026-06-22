import React from 'react';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import { Container, Box } from '@mui/material';

function App() {
  return (
    <BrowserRouter>
      <Box sx={{ minHeight: '100vh', bgcolor: '#f5f5f5' }}>
        <Container maxWidth="lg">
          <Routes>
            <Route path="/" element={<div>Welcome to Exam Platform</div>} />
          </Routes>
        </Container>
      </Box>
    </BrowserRouter>
  );
}

export default App;