const supabaseBaseUrl = 'https://eosozsasluxikfmmniqs.supabase.co';
const supabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVvc296c2FzbHV4aWtmbW1uaXFzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTY4MTMzMTYsImV4cCI6MjA3MjM4OTMxNn0.5DjzrfkMS9Wan39_e8IOjqWAlMNeS5QtKgsij6xoANM';
const apiBaseUrl = 'https://gyhawsifbnfeouzusdpv.supabase.co/rest/v1/';
const usersTable = 'users';

const allAdvertismentsTable = 'advertisements';
const favouritesTable = 'favourites';

const myFavouritesAdvertisementsEndPoint =
    '$allAdvertismentsTable?select=*,$favouritesTable(*)';

const advertiseImagesBucket = 'advertise_images';
const usersImagesBucket = 'users_images';
const ratesTable = 'rates';

const getMyRatesEndPoint = 'users?select=*,rates(*)';
