package H1;

import android.app.ActivityManager;
import android.app.WindowConfiguration;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.systemui.shared.recents.model.Task;
/* loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator CREATOR = new b();

    /* renamed from: d  reason: collision with root package name */
    public final ActivityManager.RecentTaskInfo[] f533d;

    /* renamed from: e  reason: collision with root package name */
    public final e f534e;

    /* renamed from: f  reason: collision with root package name */
    public final int f535f;

    public c(Parcel parcel) {
        this.f533d = (ActivityManager.RecentTaskInfo[]) parcel.createTypedArray(ActivityManager.RecentTaskInfo.CREATOR);
        this.f534e = (e) parcel.readTypedObject(e.CREATOR);
        this.f535f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        int i4 = 0;
        while (i4 < this.f533d.length) {
            if (i4 == 0) {
                sb2.append(Task.TAG);
            } else {
                sb2.append(", Task");
            }
            int i5 = i4 + 1;
            sb2.append(i5);
            sb2.append(": ");
            ActivityManager.RecentTaskInfo recentTaskInfo = this.f533d[i4];
            if (recentTaskInfo == null) {
                sb = null;
            } else {
                StringBuilder sb3 = new StringBuilder("id=");
                sb3.append(recentTaskInfo.taskId);
                sb3.append(" baseIntent=");
                Intent intent = recentTaskInfo.baseIntent;
                sb3.append(intent != null ? intent.getComponent() : "null");
                sb3.append(" winMode=");
                sb3.append(WindowConfiguration.windowingModeToString(recentTaskInfo.getWindowingMode()));
                sb = sb3.toString();
            }
            sb2.append(sb);
            i4 = i5;
        }
        if (this.f534e != null) {
            sb2.append(", SplitBounds: ");
            sb2.append(this.f534e);
        }
        sb2.append(", Type=");
        int i6 = this.f535f;
        if (i6 == 1) {
            sb2.append("TYPE_SINGLE");
        } else if (i6 == 2) {
            sb2.append("TYPE_SPLIT");
        } else if (i6 == 3) {
            sb2.append("TYPE_FREEFORM");
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeTypedArray(this.f533d, i4);
        parcel.writeTypedObject(this.f534e, i4);
        parcel.writeInt(this.f535f);
    }
}
