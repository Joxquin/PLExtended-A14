package O1;

import android.content.ComponentName;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$WallpapersContainer;
import com.android.launcher3.model.data.ItemInfo;
/* loaded from: classes.dex */
public final class m extends ItemInfo {

    /* renamed from: d  reason: collision with root package name */
    public final String f1468d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1469e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1470f;

    /* renamed from: g  reason: collision with root package name */
    public final ComponentName f1471g;

    public m(String str, int i4, String str2, String str3, int i5, int i6) {
        this.f1468d = str;
        this.f1469e = i4;
        this.f1470f = i5;
        this.contentDescription = str3;
        this.f1471g = str2 != null ? ComponentName.unflattenFromString(str2) : null;
        this.container = -114;
        this.rank = i6;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ContainerInfo getContainerInfo() {
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        LauncherAtom$WallpapersContainer.Builder newBuilder2 = LauncherAtom$WallpapersContainer.newBuilder();
        newBuilder2.setCardinality$3(this.f1470f);
        newBuilder.setWallpapersContainer(newBuilder2);
        return (LauncherAtom$ContainerInfo) newBuilder.build();
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final ComponentName getTargetComponent() {
        return this.f1471g;
    }
}
