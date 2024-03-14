package R1;

import android.util.Pair;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final List f1655a = new ArrayList();

    public k(String str) {
        String[] split = str.split(",");
        for (int i4 = 0; i4 < split.length; i4++) {
            if (!split[i4].isEmpty()) {
                Integer valueOf = Integer.valueOf(split[i4], 16);
                ((ArrayList) this.f1655a).add(Pair.create(valueOf, Float.valueOf(1.0f - (i4 * 0.05f))));
            }
        }
    }

    public final String toString() {
        return (String) this.f1655a.stream().map(new j()).collect(Collectors.joining(","));
    }
}
