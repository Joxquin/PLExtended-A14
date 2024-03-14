package com.android.launcher3.graphics;

import K0.g;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.ArrayMap;
import android.util.Log;
import com.android.launcher3.D;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.PreviewSurfaceRenderer;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.Themes;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes.dex */
public class GridCustomizationsProvider extends ContentProvider {
    private final ArrayMap mActivePreviews = new ArrayMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class PreviewLifecycleObserver implements Handler.Callback, IBinder.DeathRecipient {
        public boolean destroyed = false;
        public final PreviewSurfaceRenderer renderer;

        public PreviewLifecycleObserver(PreviewSurfaceRenderer previewSurfaceRenderer) {
            this.renderer = previewSurfaceRenderer;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            GridCustomizationsProvider.this.destroyObserver(this);
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (this.destroyed) {
                return true;
            }
            if (message.what == 1337) {
                this.renderer.hideBottomRow(message.getData().getBoolean("hide_bottom_row"));
            } else {
                GridCustomizationsProvider.this.destroyObserver(this);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void destroyObserver(PreviewLifecycleObserver previewLifecycleObserver) {
        if (previewLifecycleObserver != null) {
            if (!previewLifecycleObserver.destroyed) {
                previewLifecycleObserver.destroyed = true;
                previewLifecycleObserver.renderer.getHostToken().unlinkToDeath(previewLifecycleObserver, 0);
                LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                final PreviewSurfaceRenderer previewSurfaceRenderer = previewLifecycleObserver.renderer;
                Objects.requireNonNull(previewSurfaceRenderer);
                looperExecutor.execute(new Runnable() { // from class: K0.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        PreviewSurfaceRenderer.this.destroy();
                    }
                });
                if (((PreviewLifecycleObserver) this.mActivePreviews.get(previewLifecycleObserver.renderer.getHostToken())) == previewLifecycleObserver) {
                    this.mActivePreviews.remove(previewLifecycleObserver.renderer.getHostToken());
                }
            }
        }
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        PreviewLifecycleObserver previewLifecycleObserver;
        PreviewSurfaceRenderer previewSurfaceRenderer;
        if (getContext().checkPermission("android.permission.BIND_WALLPAPER", Binder.getCallingPid(), Binder.getCallingUid()) == 0 && Utilities.ATLEAST_R && "get_preview".equals(str)) {
            synchronized (this) {
                try {
                    previewSurfaceRenderer = new PreviewSurfaceRenderer(getContext(), bundle);
                    destroyObserver((PreviewLifecycleObserver) this.mActivePreviews.get(previewSurfaceRenderer.getHostToken()));
                    previewLifecycleObserver = new PreviewLifecycleObserver(previewSurfaceRenderer);
                } catch (Exception e4) {
                    e = e4;
                    previewLifecycleObserver = null;
                }
                try {
                    this.mActivePreviews.put(previewSurfaceRenderer.getHostToken(), previewLifecycleObserver);
                    Executors.MODEL_EXECUTOR.execute(new g(0, previewSurfaceRenderer));
                    previewSurfaceRenderer.getHostToken().linkToDeath(previewLifecycleObserver, 0);
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable("surface_package", previewSurfaceRenderer.getSurfacePackage());
                    Messenger messenger = new Messenger(new Handler(Executors.UI_HELPER_EXECUTOR.getLooper(), previewLifecycleObserver));
                    Message obtain = Message.obtain();
                    obtain.replyTo = messenger;
                    bundle2.putParcelable("callback", obtain);
                    return bundle2;
                } catch (Exception e5) {
                    e = e5;
                    Log.e("GridCustomizationsProvider", "Unable to generate preview", e);
                    if (previewLifecycleObserver != null) {
                        destroyObserver(previewLifecycleObserver);
                    }
                    return null;
                }
            }
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return "vnd.android.cursor.dir/launcher_grid";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String path = uri.getPath();
        path.getClass();
        char c4 = 65535;
        switch (path.hashCode()) {
            case 1222873516:
                if (path.equals("/list_options")) {
                    c4 = 0;
                    break;
                }
                break;
            case 1300895410:
                if (path.equals("/icon_themed")) {
                    c4 = 1;
                    break;
                }
                break;
            case 2143818441:
                if (path.equals("/get_icon_themed")) {
                    c4 = 2;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                MatrixCursor matrixCursor = new MatrixCursor(new String[]{"name", "rows", "cols", "preview_count", "is_default"});
                InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(getContext());
                for (InvariantDeviceProfile.GridOption gridOption : invariantDeviceProfile.parseAllGridOptions(getContext())) {
                    MatrixCursor.RowBuilder add = matrixCursor.newRow().add("name", gridOption.name);
                    int i4 = gridOption.numRows;
                    MatrixCursor.RowBuilder add2 = add.add("rows", Integer.valueOf(i4));
                    int i5 = gridOption.numColumns;
                    add2.add("cols", Integer.valueOf(i5)).add("preview_count", 1).add("is_default", Boolean.valueOf(invariantDeviceProfile.numColumns == i5 && invariantDeviceProfile.numRows == i4));
                }
                return matrixCursor;
            case 1:
            case 2:
                MatrixCursor matrixCursor2 = new MatrixCursor(new String[]{"boolean_value"});
                matrixCursor2.newRow().add("boolean_value", Integer.valueOf(Themes.isThemedIconEnabled(getContext()) ? 1 : 0));
                return matrixCursor2;
            default:
                return null;
        }
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        char c4;
        InvariantDeviceProfile.GridOption gridOption;
        String path = uri.getPath();
        path.getClass();
        int hashCode = path.hashCode();
        if (hashCode == -1555668941) {
            if (path.equals("/default_grid")) {
                c4 = 0;
            }
            c4 = 65535;
        } else if (hashCode != -1240396331) {
            if (hashCode == 1300895410 && path.equals("/icon_themed")) {
                c4 = 2;
            }
            c4 = 65535;
        } else {
            if (path.equals("/set_icon_themed")) {
                c4 = 1;
            }
            c4 = 65535;
        }
        if (c4 != 0) {
            if (c4 == 1 || c4 == 2) {
                Context context = getContext();
                LauncherPrefs.Companion companion = LauncherPrefs.Companion;
                LauncherPrefs.Companion.get(context).put(LauncherPrefs.THEMED_ICONS, contentValues.getAsBoolean("boolean_value"));
                getContext().getContentResolver().notifyChange(uri, null);
                return 1;
            }
            return 0;
        }
        String asString = contentValues.getAsString("name");
        InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(getContext());
        Iterator it = invariantDeviceProfile.parseAllGridOptions(getContext()).iterator();
        while (true) {
            if (!it.hasNext()) {
                gridOption = null;
                break;
            }
            gridOption = (InvariantDeviceProfile.GridOption) it.next();
            if (gridOption.name.equals(asString)) {
                break;
            }
        }
        if (gridOption == null) {
            return 0;
        }
        Context context2 = getContext();
        LauncherPrefs.Companion companion2 = LauncherPrefs.Companion;
        LauncherPrefs.Companion.get(context2).put(LauncherPrefs.GRID_NAME, asString);
        Executors.MAIN_EXECUTOR.execute(new D(0, context2, invariantDeviceProfile));
        getContext().getContentResolver().notifyChange(uri, null);
        return 1;
    }
}
