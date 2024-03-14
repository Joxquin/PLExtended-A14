package Y1;

import android.net.Uri;
import android.text.TextUtils;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.logger.LauncherAtom$AllAppsContainer;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$SearchResultContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.util.ComponentKey;
/* loaded from: classes.dex */
public final class z extends A {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Uri f2317f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(ComponentKey componentKey, boolean z4, Uri uri) {
        super(componentKey, z4);
        this.f2317f = uri;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ContainerInfo getContainerInfo() {
        String queryParameter = this.f2317f.getQueryParameter("searchQueryLength");
        LauncherAtom$SearchResultContainer.Builder newBuilder = LauncherAtom$SearchResultContainer.newBuilder();
        newBuilder.setQueryLength(TextUtils.isEmpty(queryParameter) ? 0 : Integer.parseInt(queryParameter));
        Launcher launcher = (Launcher) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
        int i4 = ((LauncherState) launcher.getStateManager().getState()).statsLogOrdinal;
        if (i4 == 2) {
            LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
            newBuilder2.setPageIndex$1(launcher.getWorkspace().getCurrentPage());
            newBuilder.setWorkspace$2(newBuilder2);
        } else if (i4 == 4) {
            newBuilder.setAllAppsContainer$1(LauncherAtom$AllAppsContainer.getDefaultInstance());
        }
        LauncherAtom$ContainerInfo.Builder newBuilder3 = LauncherAtom$ContainerInfo.newBuilder();
        newBuilder3.setSearchResultContainer(newBuilder);
        return (LauncherAtom$ContainerInfo) newBuilder3.build();
    }
}
