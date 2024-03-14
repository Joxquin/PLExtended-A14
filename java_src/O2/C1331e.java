package o2;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.Comparator;
/* renamed from: o2.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1331e implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MaterialButtonToggleGroup f11868a;

    public C1331e(MaterialButtonToggleGroup materialButtonToggleGroup) {
        this.f11868a = materialButtonToggleGroup;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        MaterialButton materialButton = (MaterialButton) obj;
        MaterialButton materialButton2 = (MaterialButton) obj2;
        int compareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
        return compareTo2 != 0 ? compareTo2 : Integer.valueOf(this.f11868a.indexOfChild(materialButton)).compareTo(Integer.valueOf(this.f11868a.indexOfChild(materialButton2)));
    }
}
