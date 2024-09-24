export const idlFactory = ({ IDL }) => {
  return IDL.Service({ 'getRandomJoke' : IDL.Func([], [IDL.Text], []) });
};
export const init = ({ IDL }) => { return []; };
