package f0;

import androidx.slice.Slice;
import androidx.slice.SliceItem;
import d0.C0797e;
import java.util.Arrays;
/* loaded from: classes.dex */
public class G {

    /* renamed from: a  reason: collision with root package name */
    public SliceItem f9085a;

    /* renamed from: b  reason: collision with root package name */
    public SliceItem f9086b;

    /* renamed from: c  reason: collision with root package name */
    public SliceItem f9087c;

    /* renamed from: d  reason: collision with root package name */
    public SliceItem f9088d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9089e;

    public G(Slice slice) {
        if (slice == null) {
            return;
        }
        c(new SliceItem(slice, "slice", (String) null, Arrays.asList(slice.f4054c)));
        this.f9089e = -1;
    }

    public int a(J j4, O o4) {
        return 0;
    }

    public final int b() {
        SliceItem sliceItem = this.f9087c;
        if (sliceItem != null) {
            int d4 = sliceItem.d();
            if (d4 == 2 || d4 == 3 || d4 == 1 || d4 == 0) {
                return d4;
            }
            return -1;
        }
        return -1;
    }

    public final void c(SliceItem sliceItem) {
        this.f9085a = sliceItem;
        if ("slice".equals(sliceItem.f4057b) || "action".equals(sliceItem.f4057b)) {
            this.f9086b = C0797e.j(sliceItem.g(), "int", "color", null);
            this.f9087c = C0797e.j(sliceItem.g(), "int", "layout_direction", null);
        }
        this.f9088d = C0797e.i(sliceItem, "text", "content_description");
    }

    public G(SliceItem sliceItem, int i4) {
        c(sliceItem);
        this.f9089e = i4;
    }
}
