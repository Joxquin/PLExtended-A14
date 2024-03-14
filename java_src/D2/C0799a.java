package d2;

import android.app.WallpaperColors;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseIntArray;
import com.android.systemui.monet.Style;
import java.util.ArrayList;
import java.util.List;
import l1.C1274i;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: d2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0799a {

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f8764b = {17170488, 17170489, 17170490, 17170491, 17170492, 17170493, 17170494, 17170495, 17170496, 17170497, 17170498, 17170499, 17170501, 17170502, 17170503, 17170504, 17170505, 17170506, 17170507, 17170508, 17170509, 17170510, 17170511, 17170512, 17170514, 17170515, 17170516, 17170517, 17170518, 17170519, 17170520, 17170521, 17170522, 17170523, 17170524, 17170525};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f8765c = {17170462, 17170463, 17170464, 17170465, 17170466, 17170467, 17170468, 17170469, 17170470, 17170471, 17170472, 17170473, 17170475, 17170476, 17170477, 17170478, 17170479, 17170480, 17170481, 17170482, 17170483, 17170484, 17170485, 17170486};

    /* renamed from: a  reason: collision with root package name */
    public final Context f8766a;

    public C0799a(Context context) {
        this.f8766a = context;
    }

    public static void a(List list, int[] iArr, SparseIntArray sparseIntArray) {
        ArrayList arrayList = (ArrayList) list;
        if (arrayList.size() != iArr.length) {
            Log.e("MaterialColorsGenerator", "The number of shades computed doesn't match the number of resources.");
            return;
        }
        for (int i4 = 0; i4 < iArr.length; i4++) {
            sparseIntArray.put(iArr[i4], ((Integer) arrayList.get(i4)).intValue() | (-16777216));
        }
    }

    public final SparseIntArray b(WallpaperColors wallpaperColors) {
        Context context = this.f8766a;
        int i4 = context.getResources().getConfiguration().uiMode;
        Style style = Style.f6163d;
        String stringForUser = Settings.Secure.getStringForUser(context.getContentResolver(), "theme_customization_overlay_packages", context.getUserId());
        if (!TextUtils.isEmpty(stringForUser)) {
            try {
                style = Style.valueOf(new JSONObject(stringForUser).getString("android.theme.customization.theme_style"));
            } catch (IllegalArgumentException | JSONException e4) {
                Log.i("MaterialColorsGenerator", "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES.", e4);
                style = Style.f6163d;
            }
        }
        C1274i c1274i = new C1274i(wallpaperColors, style);
        SparseIntArray sparseIntArray = new SparseIntArray();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(c1274i.f11540f.f11555c);
        arrayList.addAll(c1274i.f11541g.f11555c);
        a(arrayList, f8765c, sparseIntArray);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(c1274i.f11537c.f11555c);
        arrayList2.addAll(c1274i.f11538d.f11555c);
        arrayList2.addAll(c1274i.f11539e.f11555c);
        a(arrayList2, f8764b, sparseIntArray);
        return sparseIntArray;
    }
}
