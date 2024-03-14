package com.android.launcher3.search;

import U0.b;
import android.text.TextUtils;
import com.android.launcher3.search.StringMatcherUtility;
import com.android.launcher3.util.IntArray;
import java.lang.Character;
import java.text.Collator;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
public final class StringMatcherUtility {
    private static final Character SPACE = ' ';

    /* renamed from: com.android.launcher3.search.StringMatcherUtility$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$lang$Character$UnicodeScript;

        static {
            int[] iArr = new int[Character.UnicodeScript.values().length];
            $SwitchMap$java$lang$Character$UnicodeScript = iArr;
            try {
                iArr[Character.UnicodeScript.HAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* loaded from: classes.dex */
    public class StringMatcher {
        private final Collator mCollator;

        public StringMatcher() {
            Collator collator = Collator.getInstance();
            this.mCollator = collator;
            collator.setStrength(0);
            collator.setDecomposition(1);
        }

        public boolean isBreak(int i4, int i5, int i6) {
            if (i5 != 0) {
                switch (i5) {
                    case 12:
                    case 13:
                    case 14:
                        return true;
                    default:
                        if (i4 != 1) {
                            if (i4 == 2) {
                                return i5 > 5 || i5 <= 0;
                            } else if (i4 != 3) {
                                if (i4 != 20) {
                                    switch (i4) {
                                        case 9:
                                        case 10:
                                        case 11:
                                            return (i5 == 9 || i5 == 10 || i5 == 11) ? false : true;
                                        default:
                                            switch (i4) {
                                                case 24:
                                                case 25:
                                                case 26:
                                                    return true;
                                                default:
                                                    return false;
                                            }
                                    }
                                }
                                return true;
                            }
                        } else if (i6 != 1 && i6 != 28 && i6 != 9 && i6 != 0) {
                            return true;
                        }
                        return i5 != 1;
                }
            }
            return true;
        }

        public final boolean matches(String str, String str2) {
            Collator collator = this.mCollator;
            int compare = collator.compare(str, str2);
            if (compare != -1) {
                return compare == 0;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append((char) 65535);
            return collator.compare(sb.toString(), str2) > -1;
        }
    }

    /* loaded from: classes.dex */
    public final class StringMatcherSpace extends StringMatcher {
        @Override // com.android.launcher3.search.StringMatcherUtility.StringMatcher
        public final boolean isBreak(int i4, int i5, int i6) {
            return i5 == 0 || i5 == 12;
        }
    }

    public static /* synthetic */ boolean a(int i4, CharSequence charSequence) {
        return charSequence.charAt(i4) == SPACE.charValue();
    }

    public static IntArray getListOfBreakpoints(final CharSequence charSequence, StringMatcher stringMatcher) {
        int length = charSequence.length();
        if (length <= 2 || TextUtils.indexOf(charSequence, SPACE.charValue()) != -1) {
            return IntArray.wrap(IntStream.range(0, length).filter(new IntPredicate() { // from class: U0.a
                @Override // java.util.function.IntPredicate
                public final boolean test(int i4) {
                    return StringMatcherUtility.a(i4, charSequence);
                }
            }).map(new b()).toArray());
        }
        IntArray intArray = new IntArray();
        int type = Character.getType(Character.codePointAt(charSequence, 0));
        int type2 = Character.getType(Character.codePointAt(charSequence, 1));
        int i4 = 1;
        while (i4 < length) {
            int type3 = i4 < length + (-1) ? Character.getType(Character.codePointAt(charSequence, i4 + 1)) : 0;
            if (stringMatcher.isBreak(type2, type, type3)) {
                intArray.add(i4 - 1);
            }
            i4++;
            type = type2;
            type2 = type3;
        }
        return intArray;
    }

    public static boolean matches(String str, String str2, StringMatcher stringMatcher) {
        boolean z4;
        int length = str.length();
        int length2 = str2.length();
        if (length2 >= length && length > 0) {
            int i4 = 0;
            while (true) {
                if (i4 >= str.length()) {
                    z4 = false;
                    break;
                }
                int codePointAt = str.codePointAt(i4);
                i4 += Character.charCount(codePointAt);
                if (AnonymousClass1.$SwitchMap$java$lang$Character$UnicodeScript[Character.UnicodeScript.of(codePointAt).ordinal()] == 1) {
                    z4 = true;
                    break;
                }
            }
            if (z4) {
                return str2.toLowerCase().contains(str);
            }
            int type = Character.getType(str2.codePointAt(0));
            int i5 = length2 - length;
            int i6 = 0;
            int i7 = 0;
            while (i6 <= i5) {
                int type2 = i6 < length2 + (-1) ? Character.getType(str2.codePointAt(i6 + 1)) : 0;
                if (stringMatcher.isBreak(type, i7, type2) && stringMatcher.matches(str, str2.substring(i6, i6 + length))) {
                    return true;
                }
                i6++;
                i7 = type;
                type = type2;
            }
        }
        return false;
    }
}
