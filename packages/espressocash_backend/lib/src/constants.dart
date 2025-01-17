import 'dart:io';

import 'package:solana/solana.dart';

const espressocashLinkHost = 'link.espressocash.com';
const espressocashLinkScheme = 'espressocash';
const cpLinkDomain = 'cryptoplease.link';
const link1Host = 'solana1.$cpLinkDomain';
const link2Host = 'solana2.$cpLinkDomain';
const solanaPayHost = 'solanapay.$cpLinkDomain';
const solanaPayEspressoCashHost = 'solanapay.espressocash.com';
const deeplinkScheme = 'cryptoplease-sol';
const protocolMap = {
  link1Host: '1',
  link2Host: '2',
  espressocashLinkHost: '',
};

const directPaymentFee = 10000; // 0.01 USDC
const escrowPaymentFee = 10000; // 0.01 USDC
const escrowPaymentAccountCreationFee = 100000; // 0.1 USDC
const directPaymentWithAccountCreationFee = 250000; // 0.25 USDC
const minimumSwapFee = 10000; // 0.01 USDC

const solDecimals = 1000000000;
const usdcDecimals = 1000000;

const int tokenProgramRent = 2039280;
const lamportsPerSignature = 5000;

final devnetUsdc = Ed25519HDPublicKey.fromBase58(
  '4zMMC9srt5Ri5X14GAgXhaHii3GnPAEERYPJgZJDncDU',
);

final mainnetUsdc = Ed25519HDPublicKey.fromBase58(
  'EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v',
);

final wrappedSol = Ed25519HDPublicKey.fromBase58(
  'So11111111111111111111111111111111111111112',
);

final devnetPlatformMnemonic =
    Platform.environment['PLATFORM_MNEMONIC_DEVNET'] ?? '';
final mainnetPlatformMnemonic =
    Platform.environment['PLATFORM_MNEMONIC_MAINNET'] ?? '';

final mainnetRpcUrl = Platform.environment['SOLANA_RPC_URL'] ?? '';
final mainnetWsUrl = Platform.environment['SOLANA_WEBSOCKET_URL'] ?? '';

final jupiterReferralAddress =
    Platform.environment['JUPITER_REFERRAL_ADDRESS'] ?? '';
