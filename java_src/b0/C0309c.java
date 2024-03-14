package b0;

import android.app.PendingIntent;
import android.app.RemoteInput;
import android.app.slice.SliceItem;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import androidx.core.graphics.drawable.IconCompat;
import androidx.slice.Slice;
import androidx.slice.SliceSpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import q.C1356g;
import q.C1357h;
/* renamed from: b0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0309c {
    public static C1357h a(C1357h c1357h) {
        C1357h c1357h2 = new C1357h(0);
        if (c1357h != null) {
            C1356g c1356g = new C1356g(c1357h);
            while (c1356g.hasNext()) {
                SliceSpec sliceSpec = (SliceSpec) c1356g.next();
                c1357h2.add(sliceSpec == null ? null : new android.app.slice.SliceSpec(sliceSpec.f4071a, sliceSpec.f4072b));
            }
        }
        return c1357h2;
    }

    public static Slice b(android.app.slice.Slice slice, Context context) {
        if (slice == null || slice.getUri() == null) {
            return null;
        }
        Uri uri = slice.getUri();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<String> hints = slice.getHints();
        arrayList2.addAll(Arrays.asList((String[]) hints.toArray(new String[hints.size()])));
        android.app.slice.SliceSpec spec = slice.getSpec();
        SliceSpec sliceSpec = spec != null ? new SliceSpec(spec.getType(), spec.getRevision()) : null;
        Iterator<SliceItem> it = slice.getItems().iterator();
        while (it.hasNext()) {
            SliceItem next = it.next();
            String format = next.getFormat();
            format.getClass();
            Iterator<SliceItem> it2 = it;
            char c4 = 65535;
            switch (format.hashCode()) {
                case -1422950858:
                    if (format.equals("action")) {
                        c4 = 0;
                        break;
                    }
                    break;
                case -1377881982:
                    if (format.equals("bundle")) {
                        c4 = 1;
                        break;
                    }
                    break;
                case 104431:
                    if (format.equals("int")) {
                        c4 = 2;
                        break;
                    }
                    break;
                case 3327612:
                    if (format.equals("long")) {
                        c4 = 3;
                        break;
                    }
                    break;
                case 3556653:
                    if (format.equals("text")) {
                        c4 = 4;
                        break;
                    }
                    break;
                case 100313435:
                    if (format.equals("image")) {
                        c4 = 5;
                        break;
                    }
                    break;
                case 100358090:
                    if (format.equals("input")) {
                        c4 = 6;
                        break;
                    }
                    break;
                case 109526418:
                    if (format.equals("slice")) {
                        c4 = 7;
                        break;
                    }
                    break;
            }
            switch (c4) {
                case 0:
                    PendingIntent action = next.getAction();
                    Slice b4 = b(next.getSlice(), context);
                    String subType = next.getSubType();
                    action.getClass();
                    b4.getClass();
                    arrayList.add(new androidx.slice.SliceItem(action, b4, subType, b4.f4054c));
                    break;
                case 1:
                    arrayList.add(new androidx.slice.SliceItem(next.getBundle(), next.getFormat(), next.getSubType(), next.getHints()));
                    break;
                case 2:
                    int i4 = next.getInt();
                    String subType2 = next.getSubType();
                    List<String> hints2 = next.getHints();
                    arrayList.add(new androidx.slice.SliceItem(Integer.valueOf(i4), "int", subType2, (String[]) hints2.toArray(new String[hints2.size()])));
                    break;
                case 3:
                    long j4 = next.getLong();
                    String subType3 = next.getSubType();
                    List<String> hints3 = next.getHints();
                    arrayList.add(new androidx.slice.SliceItem(Long.valueOf(j4), "long", subType3, (String[]) hints3.toArray(new String[hints3.size()])));
                    break;
                case 4:
                    CharSequence text = next.getText();
                    String subType4 = next.getSubType();
                    List<String> hints4 = next.getHints();
                    arrayList.add(new androidx.slice.SliceItem(text, "text", subType4, (String[]) hints4.toArray(new String[hints4.size()])));
                    break;
                case 5:
                    try {
                        IconCompat b5 = IconCompat.b(context, next.getIcon());
                        String subType5 = next.getSubType();
                        List<String> hints5 = next.getHints();
                        Slice.d(b5);
                        Slice.d(b5);
                        arrayList.add(new androidx.slice.SliceItem(b5, "image", subType5, (String[]) hints5.toArray(new String[hints5.size()])));
                        break;
                    } catch (Resources.NotFoundException e4) {
                        Log.w("SliceConvert", "The icon resource isn't available.", e4);
                        break;
                    } catch (IllegalArgumentException e5) {
                        Log.w("SliceConvert", "The icon resource isn't available.", e5);
                        break;
                    }
                case 6:
                    RemoteInput remoteInput = next.getRemoteInput();
                    String subType6 = next.getSubType();
                    List<String> hints6 = next.getHints();
                    remoteInput.getClass();
                    arrayList.add(new androidx.slice.SliceItem(remoteInput, "input", subType6, (String[]) hints6.toArray(new String[hints6.size()])));
                    break;
                case 7:
                    Slice b6 = b(next.getSlice(), context);
                    String subType7 = next.getSubType();
                    b6.getClass();
                    arrayList.add(new androidx.slice.SliceItem(b6, "slice", subType7, b6.f4054c));
                    break;
            }
            it = it2;
        }
        return new Slice(arrayList, (String[]) arrayList2.toArray(new String[arrayList2.size()]), uri, sliceSpec);
    }
}
