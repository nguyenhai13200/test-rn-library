import { Text, View, StyleSheet } from 'react-native';
import { multiply, sayHello } from 'test-rn-library';

const result = multiply(3, 8);

export default function App() {
  return (
    <View style={styles.container}>
      <Text>
        Result: {result} {sayHello()}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
