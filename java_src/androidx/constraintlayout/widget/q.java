package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;
import u.C1408a;
import v.C1425a;
import x.C1455a;
/* loaded from: classes.dex */
public final class q {

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f2999d = {0, 4, 8};

    /* renamed from: e  reason: collision with root package name */
    public static final SparseIntArray f3000e;

    /* renamed from: f  reason: collision with root package name */
    public static final SparseIntArray f3001f;

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f3002a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final boolean f3003b = true;

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f3004c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f3000e = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f3001f = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(101, 6);
        sparseIntArray.append(102, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(106, 13);
        sparseIntArray.append(109, 16);
        sparseIntArray.append(107, 14);
        sparseIntArray.append(104, 11);
        sparseIntArray.append(108, 15);
        sparseIntArray.append(105, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(121, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(122, 67);
        sparseIntArray.append(113, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(112, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(111, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(123, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(119, 84);
        sparseIntArray.append(118, 85);
        sparseIntArray.append(117, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(105, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(106, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(107, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(104, 83);
        sparseIntArray2.append(103, 84);
        sparseIntArray2.append(102, 85);
        sparseIntArray2.append(101, 86);
        sparseIntArray2.append(94, 97);
    }

    public static int[] e(Barrier barrier, String str) {
        int i4;
        Object designInformation;
        String[] split = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[split.length];
        int i5 = 0;
        int i6 = 0;
        while (i5 < split.length) {
            String trim = split[i5].trim();
            try {
                i4 = v.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i4 = 0;
            }
            if (i4 == 0) {
                i4 = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i4 == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) barrier.getParent()).getDesignInformation(0, trim)) != null && (designInformation instanceof Integer)) {
                i4 = ((Integer) designInformation).intValue();
            }
            iArr[i6] = i4;
            i5++;
            i6++;
        }
        return i6 != split.length ? Arrays.copyOf(iArr, i6) : iArr;
    }

    public static l f(Context context, AttributeSet attributeSet, boolean z4) {
        String str;
        String[] strArr;
        String str2;
        k kVar;
        l lVar = new l();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z4 ? w.f3022c : w.f3020a);
        String[] strArr2 = C1408a.f12368a;
        int[] iArr = f2999d;
        SparseIntArray sparseIntArray = f3000e;
        o oVar = lVar.f2898b;
        p pVar = lVar.f2901e;
        n nVar = lVar.f2899c;
        m mVar = lVar.f2900d;
        String str3 = "unused attribute 0x";
        if (z4) {
            int indexCount = obtainStyledAttributes.getIndexCount();
            String str4 = "Unknown attribute 0x";
            k kVar2 = new k();
            nVar.getClass();
            mVar.getClass();
            oVar.getClass();
            pVar.getClass();
            int i4 = 0;
            while (i4 < indexCount) {
                int i5 = indexCount;
                int index = obtainStyledAttributes.getIndex(i4);
                int i6 = i4;
                switch (f3001f.get(index)) {
                    case 2:
                        strArr = strArr2;
                        kVar2.b(2, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2912I));
                        break;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        strArr = strArr2;
                        str2 = str4;
                        StringBuilder sb = new StringBuilder(str2);
                        kVar = kVar2;
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(sparseIntArray.get(index));
                        Log.w("ConstraintSet", sb.toString());
                        continue;
                        indexCount = i5;
                        kVar2 = kVar;
                        str4 = str2;
                        i4 = i6 + 1;
                        strArr2 = strArr;
                    case 5:
                        strArr = strArr2;
                        kVar2.c(5, obtainStyledAttributes.getString(index));
                        break;
                    case 6:
                        strArr = strArr2;
                        kVar2.b(6, obtainStyledAttributes.getDimensionPixelOffset(index, mVar.f2906C));
                        break;
                    case 7:
                        strArr = strArr2;
                        kVar2.b(7, obtainStyledAttributes.getDimensionPixelOffset(index, mVar.f2907D));
                        break;
                    case 8:
                        strArr = strArr2;
                        kVar2.b(8, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2913J));
                        break;
                    case 11:
                        strArr = strArr2;
                        kVar2.b(11, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2919P));
                        break;
                    case 12:
                        strArr = strArr2;
                        kVar2.b(12, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2920Q));
                        break;
                    case 13:
                        strArr = strArr2;
                        kVar2.b(13, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2916M));
                        break;
                    case 14:
                        strArr = strArr2;
                        kVar2.b(14, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2918O));
                        break;
                    case 15:
                        strArr = strArr2;
                        kVar2.b(15, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2921R));
                        break;
                    case 16:
                        strArr = strArr2;
                        kVar2.b(16, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2917N));
                        break;
                    case 17:
                        strArr = strArr2;
                        kVar2.b(17, obtainStyledAttributes.getDimensionPixelOffset(index, mVar.f2936d));
                        break;
                    case 18:
                        strArr = strArr2;
                        kVar2.b(18, obtainStyledAttributes.getDimensionPixelOffset(index, mVar.f2938e));
                        break;
                    case 19:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, mVar.f2940f), 19);
                        break;
                    case 20:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, mVar.f2967w), 20);
                        break;
                    case 21:
                        strArr = strArr2;
                        kVar2.b(21, obtainStyledAttributes.getLayoutDimension(index, mVar.f2934c));
                        break;
                    case 22:
                        strArr = strArr2;
                        kVar2.b(22, iArr[obtainStyledAttributes.getInt(index, oVar.f2981a)]);
                        break;
                    case 23:
                        strArr = strArr2;
                        kVar2.b(23, obtainStyledAttributes.getLayoutDimension(index, mVar.f2932b));
                        break;
                    case 24:
                        strArr = strArr2;
                        kVar2.b(24, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2909F));
                        break;
                    case 27:
                        strArr = strArr2;
                        kVar2.b(27, obtainStyledAttributes.getInt(index, mVar.f2908E));
                        break;
                    case 28:
                        strArr = strArr2;
                        kVar2.b(28, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2910G));
                        break;
                    case 31:
                        strArr = strArr2;
                        kVar2.b(31, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2914K));
                        break;
                    case 34:
                        strArr = strArr2;
                        kVar2.b(34, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2911H));
                        break;
                    case 37:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, mVar.f2968x), 37);
                        break;
                    case 38:
                        strArr = strArr2;
                        int resourceId = obtainStyledAttributes.getResourceId(index, lVar.f2897a);
                        lVar.f2897a = resourceId;
                        kVar2.b(38, resourceId);
                        break;
                    case 39:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, mVar.f2924U), 39);
                        break;
                    case 40:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, mVar.f2923T), 40);
                        break;
                    case 41:
                        strArr = strArr2;
                        kVar2.b(41, obtainStyledAttributes.getInt(index, mVar.f2925V));
                        break;
                    case 42:
                        strArr = strArr2;
                        kVar2.b(42, obtainStyledAttributes.getInt(index, mVar.f2926W));
                        break;
                    case 43:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, oVar.f2983c), 43);
                        break;
                    case 44:
                        strArr = strArr2;
                        kVar2.d(44, true);
                        kVar2.a(obtainStyledAttributes.getDimension(index, pVar.f2998m), 44);
                        break;
                    case 45:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, pVar.f2987b), 45);
                        break;
                    case 46:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, pVar.f2988c), 46);
                        break;
                    case 47:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, pVar.f2989d), 47);
                        break;
                    case 48:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, pVar.f2990e), 48);
                        break;
                    case 49:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getDimension(index, pVar.f2991f), 49);
                        break;
                    case 50:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getDimension(index, pVar.f2992g), 50);
                        break;
                    case 51:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getDimension(index, pVar.f2994i), 51);
                        break;
                    case 52:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getDimension(index, pVar.f2995j), 52);
                        break;
                    case 53:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getDimension(index, pVar.f2996k), 53);
                        break;
                    case 54:
                        strArr = strArr2;
                        kVar2.b(54, obtainStyledAttributes.getInt(index, mVar.f2927X));
                        break;
                    case 55:
                        strArr = strArr2;
                        kVar2.b(55, obtainStyledAttributes.getInt(index, mVar.f2928Y));
                        break;
                    case 56:
                        strArr = strArr2;
                        kVar2.b(56, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2929Z));
                        break;
                    case 57:
                        strArr = strArr2;
                        kVar2.b(57, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2931a0));
                        break;
                    case 58:
                        strArr = strArr2;
                        kVar2.b(58, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2933b0));
                        break;
                    case 59:
                        strArr = strArr2;
                        kVar2.b(59, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2935c0));
                        break;
                    case 60:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, pVar.f2986a), 60);
                        break;
                    case 62:
                        strArr = strArr2;
                        kVar2.b(62, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2904A));
                        break;
                    case 63:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, mVar.f2905B), 63);
                        break;
                    case 64:
                        strArr = strArr2;
                        kVar2.b(64, h(obtainStyledAttributes, index, nVar.f2972a));
                        break;
                    case 65:
                        strArr = strArr2;
                        if (obtainStyledAttributes.peekValue(index).type != 3) {
                            kVar2.c(65, strArr[obtainStyledAttributes.getInteger(index, 0)]);
                            break;
                        } else {
                            kVar2.c(65, obtainStyledAttributes.getString(index));
                            break;
                        }
                    case 66:
                        strArr = strArr2;
                        kVar2.b(66, obtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, nVar.f2976e), 67);
                        break;
                    case 68:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, oVar.f2984d), 68);
                        break;
                    case 69:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, 1.0f), 69);
                        break;
                    case 70:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, 1.0f), 70);
                        break;
                    case 71:
                        strArr = strArr2;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        strArr = strArr2;
                        kVar2.b(72, obtainStyledAttributes.getInt(index, mVar.f2941f0));
                        break;
                    case 73:
                        strArr = strArr2;
                        kVar2.b(73, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2943g0));
                        break;
                    case 74:
                        strArr = strArr2;
                        kVar2.c(74, obtainStyledAttributes.getString(index));
                        break;
                    case 75:
                        strArr = strArr2;
                        kVar2.d(75, obtainStyledAttributes.getBoolean(index, mVar.f2957n0));
                        break;
                    case 76:
                        strArr = strArr2;
                        kVar2.b(76, obtainStyledAttributes.getInt(index, nVar.f2974c));
                        break;
                    case 77:
                        strArr = strArr2;
                        kVar2.c(77, obtainStyledAttributes.getString(index));
                        break;
                    case 78:
                        strArr = strArr2;
                        kVar2.b(78, obtainStyledAttributes.getInt(index, oVar.f2982b));
                        break;
                    case 79:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, nVar.f2975d), 79);
                        break;
                    case 80:
                        strArr = strArr2;
                        kVar2.d(80, obtainStyledAttributes.getBoolean(index, mVar.f2953l0));
                        break;
                    case 81:
                        strArr = strArr2;
                        kVar2.d(81, obtainStyledAttributes.getBoolean(index, mVar.f2955m0));
                        break;
                    case 82:
                        strArr = strArr2;
                        kVar2.b(82, obtainStyledAttributes.getInteger(index, nVar.f2973b));
                        break;
                    case 83:
                        strArr = strArr2;
                        kVar2.b(83, h(obtainStyledAttributes, index, pVar.f2993h));
                        break;
                    case 84:
                        strArr = strArr2;
                        kVar2.b(84, obtainStyledAttributes.getInteger(index, nVar.f2978g));
                        break;
                    case 85:
                        strArr = strArr2;
                        kVar2.a(obtainStyledAttributes.getFloat(index, nVar.f2977f), 85);
                        break;
                    case 86:
                        strArr = strArr2;
                        int i7 = obtainStyledAttributes.peekValue(index).type;
                        if (i7 != 1) {
                            if (i7 != 3) {
                                kVar2.b(88, obtainStyledAttributes.getInteger(index, nVar.f2980i));
                                break;
                            } else {
                                String string = obtainStyledAttributes.getString(index);
                                nVar.f2979h = string;
                                kVar2.c(90, string);
                                if (nVar.f2979h.indexOf("/") <= 0) {
                                    kVar2.b(88, -1);
                                    break;
                                } else {
                                    int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                                    nVar.f2980i = resourceId2;
                                    kVar2.b(89, resourceId2);
                                    kVar2.b(88, -2);
                                    break;
                                }
                            }
                        } else {
                            int resourceId3 = obtainStyledAttributes.getResourceId(index, -1);
                            nVar.f2980i = resourceId3;
                            kVar2.b(89, resourceId3);
                            if (nVar.f2980i != -1) {
                                kVar2.b(88, -2);
                                break;
                            }
                        }
                        break;
                    case 87:
                        strArr = strArr2;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        break;
                    case 93:
                        strArr = strArr2;
                        kVar2.b(93, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2915L));
                        break;
                    case 94:
                        strArr = strArr2;
                        kVar2.b(94, obtainStyledAttributes.getDimensionPixelSize(index, mVar.f2922S));
                        break;
                    case 95:
                        strArr = strArr2;
                        i(kVar2, obtainStyledAttributes, index, 0);
                        break;
                    case 96:
                        strArr = strArr2;
                        i(kVar2, obtainStyledAttributes, index, 1);
                        break;
                    case 97:
                        strArr = strArr2;
                        kVar2.b(97, obtainStyledAttributes.getInt(index, mVar.f2959o0));
                        break;
                    case 98:
                        int i8 = C1455a.f12806d;
                        strArr = strArr2;
                        if (obtainStyledAttributes.peekValue(index).type != 3) {
                            lVar.f2897a = obtainStyledAttributes.getResourceId(index, lVar.f2897a);
                            break;
                        } else {
                            obtainStyledAttributes.getString(index);
                            break;
                        }
                    case 99:
                        kVar2.d(99, obtainStyledAttributes.getBoolean(index, mVar.f2942g));
                        strArr = strArr2;
                        break;
                }
                str2 = str4;
                kVar = kVar2;
                indexCount = i5;
                kVar2 = kVar;
                str4 = str2;
                i4 = i6 + 1;
                strArr2 = strArr;
            }
        } else {
            int indexCount2 = obtainStyledAttributes.getIndexCount();
            int i9 = 0;
            while (i9 < indexCount2) {
                int index2 = obtainStyledAttributes.getIndex(i9);
                int i10 = indexCount2;
                if (index2 != 1 && 23 != index2) {
                    if (24 != index2) {
                        nVar.getClass();
                        mVar.getClass();
                        oVar.getClass();
                        pVar.getClass();
                    }
                }
                switch (sparseIntArray.get(index2)) {
                    case 1:
                        str = str3;
                        mVar.f2960p = h(obtainStyledAttributes, index2, mVar.f2960p);
                        break;
                    case 2:
                        str = str3;
                        mVar.f2912I = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2912I);
                        break;
                    case 3:
                        str = str3;
                        mVar.f2958o = h(obtainStyledAttributes, index2, mVar.f2958o);
                        break;
                    case 4:
                        str = str3;
                        mVar.f2956n = h(obtainStyledAttributes, index2, mVar.f2956n);
                        break;
                    case 5:
                        str = str3;
                        mVar.f2969y = obtainStyledAttributes.getString(index2);
                        break;
                    case 6:
                        str = str3;
                        mVar.f2906C = obtainStyledAttributes.getDimensionPixelOffset(index2, mVar.f2906C);
                        break;
                    case 7:
                        str = str3;
                        mVar.f2907D = obtainStyledAttributes.getDimensionPixelOffset(index2, mVar.f2907D);
                        break;
                    case 8:
                        str = str3;
                        mVar.f2913J = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2913J);
                        break;
                    case 9:
                        str = str3;
                        mVar.f2966v = h(obtainStyledAttributes, index2, mVar.f2966v);
                        break;
                    case 10:
                        str = str3;
                        mVar.f2965u = h(obtainStyledAttributes, index2, mVar.f2965u);
                        break;
                    case 11:
                        str = str3;
                        mVar.f2919P = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2919P);
                        break;
                    case 12:
                        str = str3;
                        mVar.f2920Q = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2920Q);
                        break;
                    case 13:
                        str = str3;
                        mVar.f2916M = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2916M);
                        break;
                    case 14:
                        str = str3;
                        mVar.f2918O = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2918O);
                        break;
                    case 15:
                        str = str3;
                        mVar.f2921R = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2921R);
                        break;
                    case 16:
                        str = str3;
                        mVar.f2917N = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2917N);
                        break;
                    case 17:
                        str = str3;
                        mVar.f2936d = obtainStyledAttributes.getDimensionPixelOffset(index2, mVar.f2936d);
                        break;
                    case 18:
                        str = str3;
                        mVar.f2938e = obtainStyledAttributes.getDimensionPixelOffset(index2, mVar.f2938e);
                        break;
                    case 19:
                        str = str3;
                        mVar.f2940f = obtainStyledAttributes.getFloat(index2, mVar.f2940f);
                        break;
                    case 20:
                        str = str3;
                        mVar.f2967w = obtainStyledAttributes.getFloat(index2, mVar.f2967w);
                        break;
                    case 21:
                        str = str3;
                        mVar.f2934c = obtainStyledAttributes.getLayoutDimension(index2, mVar.f2934c);
                        break;
                    case 22:
                        str = str3;
                        oVar.f2981a = iArr[obtainStyledAttributes.getInt(index2, oVar.f2981a)];
                        break;
                    case 23:
                        str = str3;
                        mVar.f2932b = obtainStyledAttributes.getLayoutDimension(index2, mVar.f2932b);
                        break;
                    case 24:
                        str = str3;
                        mVar.f2909F = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2909F);
                        break;
                    case 25:
                        str = str3;
                        mVar.f2944h = h(obtainStyledAttributes, index2, mVar.f2944h);
                        break;
                    case 26:
                        str = str3;
                        mVar.f2946i = h(obtainStyledAttributes, index2, mVar.f2946i);
                        break;
                    case 27:
                        str = str3;
                        mVar.f2908E = obtainStyledAttributes.getInt(index2, mVar.f2908E);
                        break;
                    case 28:
                        str = str3;
                        mVar.f2910G = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2910G);
                        break;
                    case 29:
                        str = str3;
                        mVar.f2948j = h(obtainStyledAttributes, index2, mVar.f2948j);
                        break;
                    case 30:
                        str = str3;
                        mVar.f2950k = h(obtainStyledAttributes, index2, mVar.f2950k);
                        break;
                    case 31:
                        str = str3;
                        mVar.f2914K = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2914K);
                        break;
                    case 32:
                        str = str3;
                        mVar.f2963s = h(obtainStyledAttributes, index2, mVar.f2963s);
                        break;
                    case 33:
                        str = str3;
                        mVar.f2964t = h(obtainStyledAttributes, index2, mVar.f2964t);
                        break;
                    case 34:
                        str = str3;
                        mVar.f2911H = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2911H);
                        break;
                    case 35:
                        str = str3;
                        mVar.f2954m = h(obtainStyledAttributes, index2, mVar.f2954m);
                        break;
                    case 36:
                        str = str3;
                        mVar.f2952l = h(obtainStyledAttributes, index2, mVar.f2952l);
                        break;
                    case 37:
                        str = str3;
                        mVar.f2968x = obtainStyledAttributes.getFloat(index2, mVar.f2968x);
                        break;
                    case 38:
                        str = str3;
                        lVar.f2897a = obtainStyledAttributes.getResourceId(index2, lVar.f2897a);
                        break;
                    case 39:
                        str = str3;
                        mVar.f2924U = obtainStyledAttributes.getFloat(index2, mVar.f2924U);
                        break;
                    case 40:
                        str = str3;
                        mVar.f2923T = obtainStyledAttributes.getFloat(index2, mVar.f2923T);
                        break;
                    case 41:
                        str = str3;
                        mVar.f2925V = obtainStyledAttributes.getInt(index2, mVar.f2925V);
                        break;
                    case 42:
                        str = str3;
                        mVar.f2926W = obtainStyledAttributes.getInt(index2, mVar.f2926W);
                        break;
                    case 43:
                        str = str3;
                        oVar.f2983c = obtainStyledAttributes.getFloat(index2, oVar.f2983c);
                        break;
                    case 44:
                        str = str3;
                        pVar.f2997l = true;
                        pVar.f2998m = obtainStyledAttributes.getDimension(index2, pVar.f2998m);
                        break;
                    case 45:
                        str = str3;
                        pVar.f2987b = obtainStyledAttributes.getFloat(index2, pVar.f2987b);
                        break;
                    case 46:
                        str = str3;
                        pVar.f2988c = obtainStyledAttributes.getFloat(index2, pVar.f2988c);
                        break;
                    case 47:
                        str = str3;
                        pVar.f2989d = obtainStyledAttributes.getFloat(index2, pVar.f2989d);
                        break;
                    case 48:
                        str = str3;
                        pVar.f2990e = obtainStyledAttributes.getFloat(index2, pVar.f2990e);
                        break;
                    case 49:
                        str = str3;
                        pVar.f2991f = obtainStyledAttributes.getDimension(index2, pVar.f2991f);
                        break;
                    case 50:
                        str = str3;
                        pVar.f2992g = obtainStyledAttributes.getDimension(index2, pVar.f2992g);
                        break;
                    case 51:
                        str = str3;
                        pVar.f2994i = obtainStyledAttributes.getDimension(index2, pVar.f2994i);
                        break;
                    case 52:
                        str = str3;
                        pVar.f2995j = obtainStyledAttributes.getDimension(index2, pVar.f2995j);
                        break;
                    case 53:
                        str = str3;
                        pVar.f2996k = obtainStyledAttributes.getDimension(index2, pVar.f2996k);
                        break;
                    case 54:
                        str = str3;
                        mVar.f2927X = obtainStyledAttributes.getInt(index2, mVar.f2927X);
                        break;
                    case 55:
                        str = str3;
                        mVar.f2928Y = obtainStyledAttributes.getInt(index2, mVar.f2928Y);
                        break;
                    case 56:
                        str = str3;
                        mVar.f2929Z = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2929Z);
                        break;
                    case 57:
                        str = str3;
                        mVar.f2931a0 = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2931a0);
                        break;
                    case 58:
                        str = str3;
                        mVar.f2933b0 = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2933b0);
                        break;
                    case 59:
                        str = str3;
                        mVar.f2935c0 = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2935c0);
                        break;
                    case 60:
                        str = str3;
                        pVar.f2986a = obtainStyledAttributes.getFloat(index2, pVar.f2986a);
                        break;
                    case 61:
                        str = str3;
                        mVar.f2970z = h(obtainStyledAttributes, index2, mVar.f2970z);
                        break;
                    case 62:
                        str = str3;
                        mVar.f2904A = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2904A);
                        break;
                    case 63:
                        str = str3;
                        mVar.f2905B = obtainStyledAttributes.getFloat(index2, mVar.f2905B);
                        break;
                    case 64:
                        str = str3;
                        nVar.f2972a = h(obtainStyledAttributes, index2, nVar.f2972a);
                        break;
                    case 65:
                        str = str3;
                        if (obtainStyledAttributes.peekValue(index2).type != 3) {
                            String str5 = strArr2[obtainStyledAttributes.getInteger(index2, 0)];
                            nVar.getClass();
                            break;
                        } else {
                            obtainStyledAttributes.getString(index2);
                            nVar.getClass();
                            break;
                        }
                    case 66:
                        str = str3;
                        obtainStyledAttributes.getInt(index2, 0);
                        nVar.getClass();
                        break;
                    case 67:
                        str = str3;
                        nVar.f2976e = obtainStyledAttributes.getFloat(index2, nVar.f2976e);
                        break;
                    case 68:
                        str = str3;
                        oVar.f2984d = obtainStyledAttributes.getFloat(index2, oVar.f2984d);
                        break;
                    case 69:
                        str = str3;
                        mVar.f2937d0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 70:
                        str = str3;
                        mVar.f2939e0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 71:
                        str = str3;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case 72:
                        str = str3;
                        mVar.f2941f0 = obtainStyledAttributes.getInt(index2, mVar.f2941f0);
                        break;
                    case 73:
                        str = str3;
                        mVar.f2943g0 = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2943g0);
                        break;
                    case 74:
                        str = str3;
                        mVar.f2949j0 = obtainStyledAttributes.getString(index2);
                        break;
                    case 75:
                        str = str3;
                        mVar.f2957n0 = obtainStyledAttributes.getBoolean(index2, mVar.f2957n0);
                        break;
                    case 76:
                        str = str3;
                        nVar.f2974c = obtainStyledAttributes.getInt(index2, nVar.f2974c);
                        break;
                    case 77:
                        str = str3;
                        mVar.f2951k0 = obtainStyledAttributes.getString(index2);
                        break;
                    case 78:
                        str = str3;
                        oVar.f2982b = obtainStyledAttributes.getInt(index2, oVar.f2982b);
                        break;
                    case 79:
                        str = str3;
                        nVar.f2975d = obtainStyledAttributes.getFloat(index2, nVar.f2975d);
                        break;
                    case 80:
                        str = str3;
                        mVar.f2953l0 = obtainStyledAttributes.getBoolean(index2, mVar.f2953l0);
                        break;
                    case 81:
                        str = str3;
                        mVar.f2955m0 = obtainStyledAttributes.getBoolean(index2, mVar.f2955m0);
                        break;
                    case 82:
                        str = str3;
                        nVar.f2973b = obtainStyledAttributes.getInteger(index2, nVar.f2973b);
                        break;
                    case 83:
                        str = str3;
                        pVar.f2993h = h(obtainStyledAttributes, index2, pVar.f2993h);
                        break;
                    case 84:
                        str = str3;
                        nVar.f2978g = obtainStyledAttributes.getInteger(index2, nVar.f2978g);
                        break;
                    case 85:
                        str = str3;
                        nVar.f2977f = obtainStyledAttributes.getFloat(index2, nVar.f2977f);
                        break;
                    case 86:
                        str = str3;
                        int i11 = obtainStyledAttributes.peekValue(index2).type;
                        if (i11 != 1) {
                            if (i11 == 3) {
                                String string2 = obtainStyledAttributes.getString(index2);
                                nVar.f2979h = string2;
                                if (string2.indexOf("/") > 0) {
                                    nVar.f2980i = obtainStyledAttributes.getResourceId(index2, -1);
                                }
                            } else {
                                obtainStyledAttributes.getInteger(index2, nVar.f2980i);
                            }
                            break;
                        } else {
                            nVar.f2980i = obtainStyledAttributes.getResourceId(index2, -1);
                            break;
                        }
                    case 87:
                        StringBuilder sb2 = new StringBuilder(str3);
                        str = str3;
                        sb2.append(Integer.toHexString(index2));
                        sb2.append("   ");
                        sb2.append(sparseIntArray.get(index2));
                        Log.w("ConstraintSet", sb2.toString());
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        str = str3;
                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index2) + "   " + sparseIntArray.get(index2));
                        break;
                    case 91:
                        mVar.f2961q = h(obtainStyledAttributes, index2, mVar.f2961q);
                        str = str3;
                        break;
                    case 92:
                        mVar.f2962r = h(obtainStyledAttributes, index2, mVar.f2962r);
                        str = str3;
                        break;
                    case 93:
                        mVar.f2915L = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2915L);
                        str = str3;
                        break;
                    case 94:
                        mVar.f2922S = obtainStyledAttributes.getDimensionPixelSize(index2, mVar.f2922S);
                        str = str3;
                        break;
                    case 95:
                        i(mVar, obtainStyledAttributes, index2, 0);
                        str = str3;
                        break;
                    case 96:
                        i(mVar, obtainStyledAttributes, index2, 1);
                        str = str3;
                        break;
                    case 97:
                        mVar.f2959o0 = obtainStyledAttributes.getInt(index2, mVar.f2959o0);
                        str = str3;
                        break;
                }
                i9++;
                indexCount2 = i10;
                str3 = str;
            }
            if (mVar.f2949j0 != null) {
                mVar.f2947i0 = null;
            }
        }
        obtainStyledAttributes.recycle();
        return lVar;
    }

    public static int h(TypedArray typedArray, int i4, int i5) {
        int resourceId = typedArray.getResourceId(i4, i5);
        return resourceId == -1 ? typedArray.getInt(i4, -1) : resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void i(java.lang.Object r8, android.content.res.TypedArray r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.q.i(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    public static void j(d dVar, String str) {
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            char c4 = 65535;
            int i4 = 0;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    c4 = 0;
                } else if (substring.equalsIgnoreCase("H")) {
                    c4 = 1;
                }
                i4 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 < 0 || indexOf2 >= length - 1) {
                    String substring2 = str.substring(i4);
                    if (substring2.length() > 0) {
                        Float.parseFloat(substring2);
                    }
                } else {
                    String substring3 = str.substring(i4, indexOf2);
                    String substring4 = str.substring(indexOf2 + 1);
                    if (substring3.length() > 0 && substring4.length() > 0) {
                        float parseFloat = Float.parseFloat(substring3);
                        float parseFloat2 = Float.parseFloat(substring4);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (c4 == 1) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        dVar.f2799G = str;
    }

    public static String k(int i4) {
        switch (i4) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public final void a(ConstraintLayout constraintLayout) {
        b(constraintLayout);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public final void b(ConstraintLayout constraintLayout) {
        int i4;
        View findViewById;
        int i5;
        String str;
        q qVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap = qVar.f3004c;
        HashSet hashSet = new HashSet(hashMap.keySet());
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = constraintLayout.getChildAt(i6);
            int id = childAt.getId();
            if (!hashMap.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    str = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    str = "UNKNOWN";
                }
                sb.append(str);
                Log.w("ConstraintSet", sb.toString());
            } else if (qVar.f3003b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1) {
                    if (hashMap.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        l lVar = (l) hashMap.get(Integer.valueOf(id));
                        if (lVar != null) {
                            if (childAt instanceof Barrier) {
                                m mVar = lVar.f2900d;
                                mVar.f2945h0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.f2766k = mVar.f2941f0;
                                int i7 = mVar.f2943g0;
                                C1425a c1425a = barrier.f2768m;
                                c1425a.f12445w0 = i7;
                                c1425a.f12444v0 = mVar.f2957n0;
                                int[] iArr = mVar.f2947i0;
                                if (iArr != null) {
                                    barrier.l(iArr);
                                } else {
                                    String str2 = mVar.f2949j0;
                                    if (str2 != null) {
                                        int[] e4 = e(barrier, str2);
                                        mVar.f2947i0 = e4;
                                        barrier.l(e4);
                                    }
                                }
                            }
                            d dVar = (d) childAt.getLayoutParams();
                            dVar.a();
                            lVar.a(dVar);
                            HashMap hashMap2 = lVar.f2902f;
                            Class<?> cls = childAt.getClass();
                            Iterator it = hashMap2.keySet().iterator();
                            while (it.hasNext()) {
                                String str3 = (String) it.next();
                                a aVar = (a) hashMap2.get(str3);
                                HashMap hashMap3 = hashMap2;
                                String a4 = !aVar.f2778a ? j.a("set", str3) : str3;
                                Iterator it2 = it;
                                try {
                                    switch (aVar.f2779b.ordinal()) {
                                        case 0:
                                            i5 = childCount;
                                            cls.getMethod(a4, Integer.TYPE).invoke(childAt, Integer.valueOf(aVar.f2780c));
                                            break;
                                        case 1:
                                            i5 = childCount;
                                            cls.getMethod(a4, Float.TYPE).invoke(childAt, Float.valueOf(aVar.f2781d));
                                            break;
                                        case 2:
                                            i5 = childCount;
                                            cls.getMethod(a4, Integer.TYPE).invoke(childAt, Integer.valueOf(aVar.f2784g));
                                            break;
                                        case 3:
                                            i5 = childCount;
                                            Method method = cls.getMethod(a4, Drawable.class);
                                            ColorDrawable colorDrawable = new ColorDrawable();
                                            colorDrawable.setColor(aVar.f2784g);
                                            method.invoke(childAt, colorDrawable);
                                            break;
                                        case 4:
                                            i5 = childCount;
                                            cls.getMethod(a4, CharSequence.class).invoke(childAt, aVar.f2782e);
                                            break;
                                        case 5:
                                            i5 = childCount;
                                            cls.getMethod(a4, Boolean.TYPE).invoke(childAt, Boolean.valueOf(aVar.f2783f));
                                            break;
                                        case 6:
                                            i5 = childCount;
                                            cls.getMethod(a4, Float.TYPE).invoke(childAt, Float.valueOf(aVar.f2781d));
                                            break;
                                        case 7:
                                            i5 = childCount;
                                            try {
                                                cls.getMethod(a4, Integer.TYPE).invoke(childAt, Integer.valueOf(aVar.f2780c));
                                            } catch (IllegalAccessException e5) {
                                                e = e5;
                                                Log.e("TransitionLayout", " Custom Attribute \"" + str3 + "\" not found on " + cls.getName(), e);
                                                hashMap2 = hashMap3;
                                                it = it2;
                                                childCount = i5;
                                            } catch (NoSuchMethodException e6) {
                                                e = e6;
                                                Log.e("TransitionLayout", cls.getName() + " must have a method " + a4, e);
                                                hashMap2 = hashMap3;
                                                it = it2;
                                                childCount = i5;
                                            } catch (InvocationTargetException e7) {
                                                e = e7;
                                                Log.e("TransitionLayout", " Custom Attribute \"" + str3 + "\" not found on " + cls.getName(), e);
                                                hashMap2 = hashMap3;
                                                it = it2;
                                                childCount = i5;
                                            }
                                        default:
                                            i5 = childCount;
                                            break;
                                    }
                                } catch (IllegalAccessException e8) {
                                    e = e8;
                                    i5 = childCount;
                                } catch (NoSuchMethodException e9) {
                                    e = e9;
                                    i5 = childCount;
                                } catch (InvocationTargetException e10) {
                                    e = e10;
                                    i5 = childCount;
                                }
                                hashMap2 = hashMap3;
                                it = it2;
                                childCount = i5;
                            }
                            i4 = childCount;
                            childAt.setLayoutParams(dVar);
                            o oVar = lVar.f2898b;
                            if (oVar.f2982b == 0) {
                                childAt.setVisibility(oVar.f2981a);
                            }
                            childAt.setAlpha(oVar.f2983c);
                            p pVar = lVar.f2901e;
                            childAt.setRotation(pVar.f2986a);
                            childAt.setRotationX(pVar.f2987b);
                            childAt.setRotationY(pVar.f2988c);
                            childAt.setScaleX(pVar.f2989d);
                            childAt.setScaleY(pVar.f2990e);
                            if (pVar.f2993h != -1) {
                                if (((View) childAt.getParent()).findViewById(pVar.f2993h) != null) {
                                    float bottom = (findViewById.getBottom() + findViewById.getTop()) / 2.0f;
                                    float right = (findViewById.getRight() + findViewById.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(right - childAt.getLeft());
                                        childAt.setPivotY(bottom - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(pVar.f2991f)) {
                                    childAt.setPivotX(pVar.f2991f);
                                }
                                if (!Float.isNaN(pVar.f2992g)) {
                                    childAt.setPivotY(pVar.f2992g);
                                }
                            }
                            childAt.setTranslationX(pVar.f2994i);
                            childAt.setTranslationY(pVar.f2995j);
                            childAt.setTranslationZ(pVar.f2996k);
                            if (pVar.f2997l) {
                                childAt.setElevation(pVar.f2998m);
                            }
                        }
                    } else {
                        i4 = childCount;
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                    i6++;
                    qVar = this;
                    childCount = i4;
                }
            }
            i4 = childCount;
            i6++;
            qVar = this;
            childCount = i4;
        }
        int i8 = childCount;
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            Integer num = (Integer) it3.next();
            l lVar2 = (l) hashMap.get(num);
            if (lVar2 != null) {
                m mVar2 = lVar2.f2900d;
                if (mVar2.f2945h0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    int[] iArr2 = mVar2.f2947i0;
                    if (iArr2 != null) {
                        barrier2.l(iArr2);
                    } else {
                        String str4 = mVar2.f2949j0;
                        if (str4 != null) {
                            int[] e11 = e(barrier2, str4);
                            mVar2.f2947i0 = e11;
                            barrier2.l(e11);
                        }
                    }
                    barrier2.f2766k = mVar2.f2941f0;
                    barrier2.f2768m.f12445w0 = mVar2.f2943g0;
                    d generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.n();
                    lVar2.a(generateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, generateDefaultLayoutParams);
                }
                if (mVar2.f2930a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    d generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    lVar2.a(generateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, generateDefaultLayoutParams2);
                }
            }
        }
        for (int i9 = 0; i9 < i8; i9++) {
            View childAt2 = constraintLayout.getChildAt(i9);
            if (childAt2 instanceof b) {
                ((b) childAt2).f(constraintLayout);
            }
        }
    }

    public final void c(ConstraintLayout constraintLayout) {
        int i4;
        HashMap hashMap;
        HashMap hashMap2;
        q qVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap3 = qVar.f3004c;
        hashMap3.clear();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = constraintLayout.getChildAt(i5);
            d dVar = (d) childAt.getLayoutParams();
            int id = childAt.getId();
            if (qVar.f3003b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!hashMap3.containsKey(Integer.valueOf(id))) {
                hashMap3.put(Integer.valueOf(id), new l());
            }
            l lVar = (l) hashMap3.get(Integer.valueOf(id));
            if (lVar == null) {
                i4 = childCount;
                hashMap = hashMap3;
            } else {
                HashMap hashMap4 = qVar.f3002a;
                HashMap hashMap5 = new HashMap();
                Class<?> cls = childAt.getClass();
                for (String str : hashMap4.keySet()) {
                    a aVar = (a) hashMap4.get(str);
                    int i6 = childCount;
                    try {
                        if (str.equals("BackgroundColor")) {
                            hashMap2 = hashMap3;
                            try {
                                hashMap5.put(str, new a(aVar, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                            } catch (IllegalAccessException e4) {
                                e = e4;
                                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName(), e);
                                childCount = i6;
                                hashMap3 = hashMap2;
                            } catch (NoSuchMethodException e5) {
                                e = e5;
                                Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e);
                                childCount = i6;
                                hashMap3 = hashMap2;
                            } catch (InvocationTargetException e6) {
                                e = e6;
                                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName(), e);
                                childCount = i6;
                                hashMap3 = hashMap2;
                            }
                        } else {
                            hashMap2 = hashMap3;
                            try {
                                hashMap5.put(str, new a(aVar, cls.getMethod("getMap" + str, new Class[0]).invoke(childAt, new Object[0])));
                            } catch (IllegalAccessException e7) {
                                e = e7;
                                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName(), e);
                                childCount = i6;
                                hashMap3 = hashMap2;
                            } catch (NoSuchMethodException e8) {
                                e = e8;
                                Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e);
                                childCount = i6;
                                hashMap3 = hashMap2;
                            } catch (InvocationTargetException e9) {
                                e = e9;
                                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName(), e);
                                childCount = i6;
                                hashMap3 = hashMap2;
                            }
                        }
                    } catch (IllegalAccessException e10) {
                        e = e10;
                        hashMap2 = hashMap3;
                    } catch (NoSuchMethodException e11) {
                        e = e11;
                        hashMap2 = hashMap3;
                    } catch (InvocationTargetException e12) {
                        e = e12;
                        hashMap2 = hashMap3;
                    }
                    childCount = i6;
                    hashMap3 = hashMap2;
                }
                i4 = childCount;
                hashMap = hashMap3;
                lVar.f2902f = hashMap5;
                lVar.b(id, dVar);
                int visibility = childAt.getVisibility();
                o oVar = lVar.f2898b;
                oVar.f2981a = visibility;
                oVar.f2983c = childAt.getAlpha();
                float rotation = childAt.getRotation();
                p pVar = lVar.f2901e;
                pVar.f2986a = rotation;
                pVar.f2987b = childAt.getRotationX();
                pVar.f2988c = childAt.getRotationY();
                pVar.f2989d = childAt.getScaleX();
                pVar.f2990e = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    pVar.f2991f = pivotX;
                    pVar.f2992g = pivotY;
                }
                pVar.f2994i = childAt.getTranslationX();
                pVar.f2995j = childAt.getTranslationY();
                pVar.f2996k = childAt.getTranslationZ();
                if (pVar.f2997l) {
                    pVar.f2998m = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    boolean z4 = barrier.f2768m.f12444v0;
                    m mVar = lVar.f2900d;
                    mVar.f2957n0 = z4;
                    mVar.f2947i0 = Arrays.copyOf(barrier.f2785d, barrier.f2786e);
                    mVar.f2941f0 = barrier.f2766k;
                    mVar.f2943g0 = barrier.f2768m.f12445w0;
                }
            }
            i5++;
            qVar = this;
            childCount = i4;
            hashMap3 = hashMap;
        }
    }

    public final void d(int i4, int i5, int i6, int i7) {
        HashMap hashMap = this.f3004c;
        if (!hashMap.containsKey(Integer.valueOf(i4))) {
            hashMap.put(Integer.valueOf(i4), new l());
        }
        l lVar = (l) hashMap.get(Integer.valueOf(i4));
        if (lVar == null) {
            return;
        }
        m mVar = lVar.f2900d;
        switch (i5) {
            case 1:
                if (i7 == 1) {
                    mVar.f2944h = i6;
                    mVar.f2946i = -1;
                    return;
                } else if (i7 == 2) {
                    mVar.f2946i = i6;
                    mVar.f2944h = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + k(i7) + " undefined");
                }
            case 2:
                if (i7 == 1) {
                    mVar.f2948j = i6;
                    mVar.f2950k = -1;
                    return;
                } else if (i7 == 2) {
                    mVar.f2950k = i6;
                    mVar.f2948j = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + k(i7) + " undefined");
                }
            case 3:
                if (i7 == 3) {
                    mVar.f2952l = i6;
                    mVar.f2954m = -1;
                    mVar.f2960p = -1;
                    mVar.f2961q = -1;
                    mVar.f2962r = -1;
                    return;
                } else if (i7 != 4) {
                    throw new IllegalArgumentException("right to " + k(i7) + " undefined");
                } else {
                    mVar.f2954m = i6;
                    mVar.f2952l = -1;
                    mVar.f2960p = -1;
                    mVar.f2961q = -1;
                    mVar.f2962r = -1;
                    return;
                }
            case 4:
                if (i7 == 4) {
                    mVar.f2958o = i6;
                    mVar.f2956n = -1;
                    mVar.f2960p = -1;
                    mVar.f2961q = -1;
                    mVar.f2962r = -1;
                    return;
                } else if (i7 != 3) {
                    throw new IllegalArgumentException("right to " + k(i7) + " undefined");
                } else {
                    mVar.f2956n = i6;
                    mVar.f2958o = -1;
                    mVar.f2960p = -1;
                    mVar.f2961q = -1;
                    mVar.f2962r = -1;
                    return;
                }
            case 5:
                if (i7 == 5) {
                    mVar.f2960p = i6;
                    mVar.f2958o = -1;
                    mVar.f2956n = -1;
                    mVar.f2952l = -1;
                    mVar.f2954m = -1;
                    return;
                } else if (i7 == 3) {
                    mVar.f2961q = i6;
                    mVar.f2958o = -1;
                    mVar.f2956n = -1;
                    mVar.f2952l = -1;
                    mVar.f2954m = -1;
                    return;
                } else if (i7 != 4) {
                    throw new IllegalArgumentException("right to " + k(i7) + " undefined");
                } else {
                    mVar.f2962r = i6;
                    mVar.f2958o = -1;
                    mVar.f2956n = -1;
                    mVar.f2952l = -1;
                    mVar.f2954m = -1;
                    return;
                }
            case 6:
                if (i7 == 6) {
                    mVar.f2964t = i6;
                    mVar.f2963s = -1;
                    return;
                } else if (i7 == 7) {
                    mVar.f2963s = i6;
                    mVar.f2964t = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + k(i7) + " undefined");
                }
            case 7:
                if (i7 == 7) {
                    mVar.f2966v = i6;
                    mVar.f2965u = -1;
                    return;
                } else if (i7 == 6) {
                    mVar.f2965u = i6;
                    mVar.f2966v = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + k(i7) + " undefined");
                }
            default:
                throw new IllegalArgumentException(k(i5) + " to " + k(i7) + " unknown");
        }
    }

    public final void g(int i4, Context context) {
        XmlResourceParser xml = context.getResources().getXml(i4);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType != 2) {
                    continue;
                } else {
                    String name = xml.getName();
                    l f4 = f(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        f4.f2900d.f2930a = true;
                    }
                    this.f3004c.put(Integer.valueOf(f4.f2897a), f4);
                    continue;
                }
            }
        } catch (IOException e4) {
            Log.e("ConstraintSet", "Error parsing resource: " + i4, e4);
        } catch (XmlPullParserException e5) {
            Log.e("ConstraintSet", "Error parsing resource: " + i4, e5);
        }
    }
}
