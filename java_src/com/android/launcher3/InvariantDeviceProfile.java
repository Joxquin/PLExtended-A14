package com.android.launcher3;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Point;
import android.graphics.PointF;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import android.view.Display;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.provider.RestoreDbTask;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LockedUserState;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.Partner;
import com.android.launcher3.util.WindowBounds;
import com.android.launcher3.util.window.WindowManagerProxy;
import com.android.systemui.shared.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public final class InvariantDeviceProfile {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new C0487w());
    public PointF[] allAppsBorderSpaces;
    public PointF[] allAppsCellSize;
    public float[] allAppsIconSize;
    public float[] allAppsIconTextSize;
    public int allAppsSpecsId;
    public int allAppsSpecsTwoPanelId;
    public int allAppsStyle;
    public PointF[] borderSpaces;
    public int cellStyle;
    public String dbFile;
    public int defaultLayoutId;
    public Point defaultWallpaperSize;
    public int demoModeLayoutId;
    public int devicePaddingId;
    public int deviceType;
    public int fillResIconDpi;
    public int folderSpecsId;
    public int folderSpecsTwoPanelId;
    public int folderStyle;
    public float[] horizontalMargin;
    public float[] hotseatBarBottomSpace;
    public int[] hotseatColumnSpan;
    public float[] hotseatQsbSpace;
    public int hotseatSpecsId;
    public int hotseatSpecsTwoPanelId;
    public int iconBitmapSize;
    public float[] iconSize;
    public float[] iconTextSize;
    public int inlineNavButtonsEndSpacing;
    public boolean[] inlineQsb;
    protected boolean isScalable;
    private final ArrayList mChangeListeners;
    public PointF[] minCellSize;
    public int numAllAppsColumns;
    public int numColumns;
    public int numDatabaseAllAppsColumns;
    public int numDatabaseHotseatIcons;
    public int numFolderColumns;
    public int numFolderRows;
    public int numRows;
    public int numSearchContainerColumns;
    public int numShownHotseatIcons;
    public boolean[] startAlignTaskbar;
    public List supportedProfiles;
    public float[] transientTaskbarIconSize;
    public int workspaceSpecsId;
    public int workspaceSpecsTwoPanelId;

    /* loaded from: classes.dex */
    public final class GridOption {
        private final int allAppsStyle;
        private final int cellStyle;
        private final String dbFile;
        private final int defaultLayoutId;
        private final int demoModeLayoutId;
        public final int deviceCategory;
        private final int devicePaddingId;
        private final int folderStyle;
        private final int[] hotseatColumnSpan;
        private int inlineNavButtonsEndSpacing;
        private final boolean[] inlineQsb;
        private final boolean isScalable;
        private final int mAllAppsSpecsId;
        private final int mAllAppsSpecsTwoPanelId;
        private final int mFolderSpecsId;
        private final int mFolderSpecsTwoPanelId;
        private final int mHotseatSpecsId;
        private final int mHotseatSpecsTwoPanelId;
        private final int mWorkspaceSpecsId;
        private final int mWorkspaceSpecsTwoPanelId;
        public final String name;
        private final int numAllAppsColumns;
        public final int numColumns;
        private final int numDatabaseAllAppsColumns;
        private final int numDatabaseHotseatIcons;
        private final int numFolderColumns;
        private final int numFolderRows;
        private final int numHotseatIcons;
        public final int numRows;
        public final int numSearchContainerColumns;

        public GridOption(Context context, AttributeSet attributeSet) {
            this.hotseatColumnSpan = r1;
            boolean[] zArr = new boolean[4];
            this.inlineQsb = zArr;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.GridDisplayOption);
            this.name = obtainStyledAttributes.getString(21);
            int i4 = obtainStyledAttributes.getInt(29, 0);
            this.numRows = i4;
            int i5 = obtainStyledAttributes.getInt(23, 0);
            this.numColumns = i5;
            this.numSearchContainerColumns = obtainStyledAttributes.getInt(30, i5);
            this.dbFile = obtainStyledAttributes.getString(4);
            int resourceId = obtainStyledAttributes.getResourceId(5, 0);
            this.defaultLayoutId = resourceId;
            this.demoModeLayoutId = obtainStyledAttributes.getResourceId(6, resourceId);
            this.allAppsStyle = obtainStyledAttributes.getResourceId(2, R.style.AllAppsStyleDefault);
            int i6 = obtainStyledAttributes.getInt(22, i5);
            this.numAllAppsColumns = i6;
            this.numDatabaseAllAppsColumns = obtainStyledAttributes.getInt(24, i6 * 2);
            int i7 = obtainStyledAttributes.getInt(28, i5);
            this.numHotseatIcons = i7;
            this.numDatabaseHotseatIcons = obtainStyledAttributes.getInt(25, i7 * 2);
            int[] iArr = {obtainStyledAttributes.getInt(12, i5), obtainStyledAttributes.getInt(13, i5), obtainStyledAttributes.getInt(15, i5), obtainStyledAttributes.getInt(14, i5)};
            this.inlineNavButtonsEndSpacing = obtainStyledAttributes.getResourceId(18, R.dimen.taskbar_button_margin_default);
            this.numFolderRows = obtainStyledAttributes.getInt(27, i4);
            this.numFolderColumns = obtainStyledAttributes.getInt(26, i5);
            this.folderStyle = obtainStyledAttributes.getResourceId(11, -1);
            this.cellStyle = obtainStyledAttributes.getResourceId(3, R.style.CellStyleDefault);
            this.isScalable = obtainStyledAttributes.getBoolean(20, false);
            this.devicePaddingId = obtainStyledAttributes.getResourceId(8, -1);
            this.deviceCategory = obtainStyledAttributes.getInt(7, 7);
            if (FeatureFlags.ENABLE_RESPONSIVE_WORKSPACE.get()) {
                this.mWorkspaceSpecsId = obtainStyledAttributes.getResourceId(31, -1);
                this.mWorkspaceSpecsTwoPanelId = obtainStyledAttributes.getResourceId(32, -1);
                this.mAllAppsSpecsId = obtainStyledAttributes.getResourceId(0, -1);
                this.mAllAppsSpecsTwoPanelId = obtainStyledAttributes.getResourceId(1, -1);
                this.mFolderSpecsId = obtainStyledAttributes.getResourceId(9, -1);
                this.mFolderSpecsTwoPanelId = obtainStyledAttributes.getResourceId(10, -1);
                this.mHotseatSpecsId = obtainStyledAttributes.getResourceId(16, -1);
                this.mHotseatSpecsTwoPanelId = obtainStyledAttributes.getResourceId(17, -1);
            } else {
                this.mWorkspaceSpecsId = -1;
                this.mWorkspaceSpecsTwoPanelId = -1;
                this.mAllAppsSpecsId = -1;
                this.mAllAppsSpecsTwoPanelId = -1;
                this.mFolderSpecsId = -1;
                this.mFolderSpecsTwoPanelId = -1;
                this.mHotseatSpecsId = -1;
                this.mHotseatSpecsTwoPanelId = -1;
            }
            int i8 = obtainStyledAttributes.getInt(19, 0);
            zArr[0] = (i8 & 1) == 1;
            zArr[1] = (i8 & 2) == 2;
            zArr[2] = (i8 & 4) == 4;
            zArr[3] = (i8 & 8) == 8;
            obtainStyledAttributes.recycle();
        }

        public final boolean isEnabled(int i4) {
            int i5 = this.deviceCategory;
            return i4 != 0 ? i4 != 1 ? i4 == 2 && (i5 & 2) == 2 : (i5 & 4) == 4 : (i5 & 1) == 1;
        }
    }

    /* loaded from: classes.dex */
    public interface OnIDPChangeListener {
        void onIdpChanged(boolean z4);
    }

    public InvariantDeviceProfile() {
        this.devicePaddingId = -1;
        this.workspaceSpecsId = -1;
        this.workspaceSpecsTwoPanelId = -1;
        this.allAppsSpecsId = -1;
        this.allAppsSpecsTwoPanelId = -1;
        this.folderSpecsId = -1;
        this.folderSpecsTwoPanelId = -1;
        this.hotseatSpecsId = -1;
        this.hotseatSpecsTwoPanelId = -1;
        this.inlineQsb = new boolean[4];
        this.supportedProfiles = Collections.EMPTY_LIST;
        this.mChangeListeners = new ArrayList();
    }

    public static /* synthetic */ InvariantDeviceProfile a(Context context) {
        return new InvariantDeviceProfile(context);
    }

    public static /* synthetic */ void b(Context context, InvariantDeviceProfile invariantDeviceProfile) {
        invariantDeviceProfile.getClass();
        invariantDeviceProfile.onConfigChanged(context.getApplicationContext());
    }

    public static int c(float f4, float f5, DisplayOption displayOption, DisplayOption displayOption2) {
        return Float.compare((float) Math.hypot(displayOption.minWidthDps - f4, displayOption.minHeightDps - f5), (float) Math.hypot(displayOption2.minWidthDps - f4, displayOption2.minHeightDps - f5));
    }

    public static /* synthetic */ void d(InvariantDeviceProfile invariantDeviceProfile, Context context, int i4) {
        if ((i4 & 28) != 0) {
            invariantDeviceProfile.onConfigChanged(context);
        } else {
            invariantDeviceProfile.getClass();
        }
    }

    public static String getCurrentGridName(Context context) {
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        return (String) LauncherPrefs.Companion.get(context).get(LauncherPrefs.GRID_NAME);
    }

    public static String getDefaultGridName(Context context) {
        return new InvariantDeviceProfile().initGrid(context, null);
    }

    private static int getDeviceType(final DisplayController.Info info) {
        int reduce = info.supportedBounds.stream().mapToInt(new ToIntFunction() { // from class: com.android.launcher3.B
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return DisplayController.Info.this.isTablet((WindowBounds) obj) ? 2 : 1;
            }
        }).reduce(0, new C());
        if (reduce == 3) {
            return 1;
        }
        return reduce == 2 ? 2 : 0;
    }

    private static ArrayList getPredefinedDeviceProfiles(Context context, String str, int i4, boolean z4) {
        ArrayList arrayList = new ArrayList();
        try {
            XmlResourceParser xml = context.getResources().getXml(R.xml.device_profiles);
            int depth = xml.getDepth();
            while (true) {
                int next = xml.next();
                if ((next != 3 || xml.getDepth() > depth) && next != 1) {
                    if (next == 2 && "grid-option".equals(xml.getName())) {
                        GridOption gridOption = new GridOption(context, Xml.asAttributeSet(xml));
                        if (gridOption.isEnabled(i4) || z4) {
                            int depth2 = xml.getDepth();
                            while (true) {
                                int next2 = xml.next();
                                if ((next2 != 3 || xml.getDepth() > depth2) && next2 != 1) {
                                    if (next2 == 2 && "display-option".equals(xml.getName())) {
                                        arrayList.add(new DisplayOption(gridOption, context, Xml.asAttributeSet(xml)));
                                    }
                                }
                            }
                        }
                    }
                }
            }
            xml.close();
            ArrayList arrayList2 = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    DisplayOption displayOption = (DisplayOption) it.next();
                    if (str.equals(displayOption.grid.name) && (displayOption.grid.isEnabled(i4) || z4)) {
                        arrayList2.add(displayOption);
                    }
                }
            }
            if (arrayList2.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    DisplayOption displayOption2 = (DisplayOption) it2.next();
                    if (displayOption2.canBeDefault) {
                        arrayList2.add(displayOption2);
                    }
                }
            }
            if (arrayList2.isEmpty()) {
                throw new RuntimeException("No display option with canBeDefault=true");
            }
            return arrayList2;
        } catch (IOException | XmlPullParserException e4) {
            throw new RuntimeException(e4);
        }
    }

    private String initGrid(Context context, String str) {
        DisplayController.Info info = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo();
        int deviceType = getDeviceType(info);
        DisplayOption invDistWeightedInterpolate = invDistWeightedInterpolate(info, getPredefinedDeviceProfiles(context, str, deviceType, RestoreDbTask.isPending(context)), deviceType);
        initGrid(context, info, invDistWeightedInterpolate, deviceType);
        return invDistWeightedInterpolate.grid.name;
    }

    private static DisplayOption invDistWeightedInterpolate(DisplayController.Info info, ArrayList arrayList, int i4) {
        int i5;
        Iterator it = ((ArraySet) info.supportedBounds).iterator();
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MAX_VALUE;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            WindowBounds windowBounds = (WindowBounds) it.next();
            boolean isTablet = info.isTablet(windowBounds);
            Point point = windowBounds.availableSize;
            if (isTablet && i4 == 1) {
                i6 = Math.min(i6, point.x / 2);
                i7 = Math.min(i7, point.y);
            } else {
                if (!isTablet) {
                    int i8 = point.x;
                    int i9 = point.y;
                    if ((i8 > i9 ? 1 : 0) != 0) {
                        i6 = Math.min(i6, i9);
                        i7 = Math.min(i7, point.x);
                    }
                }
                i6 = Math.min(i6, point.x);
                i7 = Math.min(i7, point.y);
            }
        }
        float f4 = i6;
        int densityDpi = info.getDensityDpi();
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        final float f5 = f4 / (densityDpi / 160.0f);
        final float densityDpi2 = i7 / (info.getDensityDpi() / 160.0f);
        Collections.sort(arrayList, new Comparator() { // from class: com.android.launcher3.E
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return InvariantDeviceProfile.c(f5, densityDpi2, (InvariantDeviceProfile.DisplayOption) obj, (InvariantDeviceProfile.DisplayOption) obj2);
            }
        });
        DisplayOption displayOption = (DisplayOption) arrayList.get(0);
        GridOption gridOption = displayOption.grid;
        if (((float) Math.hypot(displayOption.minWidthDps - f5, displayOption.minHeightDps - densityDpi2)) == 0.0f) {
            return displayOption;
        }
        DisplayOption displayOption2 = new DisplayOption(gridOption);
        float f6 = 0.0f;
        for (int i10 = 0; i10 < arrayList.size() && i10 < 3.0f; i10++) {
            DisplayOption displayOption3 = (DisplayOption) arrayList.get(i10);
            float hypot = (float) Math.hypot(displayOption3.minWidthDps - f5, displayOption3.minHeightDps - densityDpi2);
            float pow = Float.compare(hypot, 0.0f) == 0 ? Float.POSITIVE_INFINITY : (float) (100000.0d / Math.pow(hypot, 5.0f));
            f6 += pow;
            DisplayOption displayOption4 = new DisplayOption();
            DisplayOption.q(displayOption4, displayOption3);
            DisplayOption.r(displayOption4, pow);
            DisplayOption.q(displayOption2, displayOption4);
        }
        DisplayOption.r(displayOption2, 1.0f / f6);
        while (i5 < 4) {
            displayOption2.iconSizes[i5] = Math.min(displayOption2.iconSizes[i5], displayOption.iconSizes[i5]);
            i5++;
        }
        return displayOption2;
    }

    private void onConfigChanged(Context context) {
        Object[] modelState = toModelState();
        initGrid(context, getCurrentGridName(context));
        boolean z4 = !Arrays.equals(modelState, toModelState());
        Iterator it = this.mChangeListeners.iterator();
        while (it.hasNext()) {
            ((OnIDPChangeListener) it.next()).onIdpChanged(z4);
        }
    }

    private Object[] toModelState() {
        return new Object[]{Integer.valueOf(this.numColumns), Integer.valueOf(this.numRows), Integer.valueOf(this.numSearchContainerColumns), Integer.valueOf(this.numDatabaseHotseatIcons), Integer.valueOf(this.iconBitmapSize), Integer.valueOf(this.fillResIconDpi), Integer.valueOf(this.numDatabaseAllAppsColumns), this.dbFile};
    }

    public final void addOnChangeListener(OnIDPChangeListener onIDPChangeListener) {
        this.mChangeListeners.add(onIDPChangeListener);
    }

    public final DeviceProfile getBestMatch(float f4, float f5, int i4) {
        DeviceProfile deviceProfile = (DeviceProfile) this.supportedProfiles.get(0);
        float f6 = Float.MAX_VALUE;
        for (DeviceProfile deviceProfile2 : this.supportedProfiles) {
            float abs = Math.abs(deviceProfile2.heightPx - f5) + Math.abs(deviceProfile2.widthPx - f4);
            if (abs < f6) {
                deviceProfile = deviceProfile2;
                f6 = abs;
            } else if (abs == f6 && deviceProfile2.rotationHint == i4) {
                deviceProfile = deviceProfile2;
            }
        }
        return deviceProfile;
    }

    public final DeviceProfile getDeviceProfile(Context context) {
        Resources resources = context.getResources();
        Configuration configuration = context.getResources().getConfiguration();
        return getBestMatch(configuration.screenWidthDp * resources.getDisplayMetrics().density, configuration.screenHeightDp * resources.getDisplayMetrics().density, ((WindowManagerProxy) WindowManagerProxy.INSTANCE.get(context)).getRotation(context));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    public final List parseAllGridOptions(Context context) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        try {
            XmlResourceParser xml = context.getResources().getXml(R.xml.device_profiles);
            int depth = xml.getDepth();
            while (true) {
                int next = xml.next();
                if ((next != 3 || xml.getDepth() > depth) && next != 1) {
                    if (next == 2 && "grid-option".equals(xml.getName())) {
                        arrayList2.add(new GridOption(context, Xml.asAttributeSet(xml)));
                    }
                }
            }
            xml.close();
            arrayList = arrayList2;
        } catch (IOException | XmlPullParserException e4) {
            Log.e("IDP", "Error parsing device profile", e4);
            arrayList = Collections.emptyList();
        }
        return (List) arrayList.stream().filter(new Predicate() { // from class: com.android.launcher3.x
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((InvariantDeviceProfile.GridOption) obj).isEnabled(InvariantDeviceProfile.this.deviceType);
            }
        }).collect(Collectors.toList());
    }

    public final void reinitializeAfterRestore(Context context) {
        FileLog.d("IDP", "Reinitializing grid after restore");
        String currentGridName = getCurrentGridName(context);
        String str = this.dbFile;
        String initGrid = initGrid(context, currentGridName);
        if (this.dbFile.equals(str)) {
            return;
        }
        FileLog.d("IDP", "Restored grid is disabled : " + currentGridName + ", migrating to: " + initGrid + ", removing all other grid db files");
        for (String str2 : LauncherFiles.GRID_DB_FILES) {
            if (!str2.equals(str) && context.getDatabasePath(str2).delete()) {
                FileLog.d("IDP", "Removed old grid db file: ".concat(str2));
            }
        }
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs.Companion.get(context).put(LauncherPrefs.GRID_NAME, initGrid);
        Executors.MAIN_EXECUTOR.execute(new D(0, context, this));
    }

    public final void removeOnChangeListener(OnIDPChangeListener onIDPChangeListener) {
        this.mChangeListeners.remove(onIDPChangeListener);
    }

    private void initGrid(Context context, DisplayController.Info info, DisplayOption displayOption, int i4) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        GridOption gridOption = displayOption.grid;
        this.numRows = gridOption.numRows;
        this.numColumns = gridOption.numColumns;
        this.numSearchContainerColumns = gridOption.numSearchContainerColumns;
        this.dbFile = gridOption.dbFile;
        this.defaultLayoutId = gridOption.defaultLayoutId;
        this.demoModeLayoutId = gridOption.demoModeLayoutId;
        this.numFolderRows = gridOption.numFolderRows;
        this.numFolderColumns = gridOption.numFolderColumns;
        this.folderStyle = gridOption.folderStyle;
        this.cellStyle = gridOption.cellStyle;
        this.isScalable = gridOption.isScalable;
        this.devicePaddingId = gridOption.devicePaddingId;
        this.workspaceSpecsId = gridOption.mWorkspaceSpecsId;
        this.workspaceSpecsTwoPanelId = gridOption.mWorkspaceSpecsTwoPanelId;
        this.allAppsSpecsId = gridOption.mAllAppsSpecsId;
        this.allAppsSpecsTwoPanelId = gridOption.mAllAppsSpecsTwoPanelId;
        this.folderSpecsId = gridOption.mFolderSpecsId;
        this.folderSpecsTwoPanelId = gridOption.mFolderSpecsTwoPanelId;
        this.hotseatSpecsId = gridOption.mHotseatSpecsId;
        this.hotseatSpecsTwoPanelId = gridOption.mHotseatSpecsTwoPanelId;
        this.deviceType = i4;
        this.inlineNavButtonsEndSpacing = gridOption.inlineNavButtonsEndSpacing;
        float[] fArr = displayOption.iconSizes;
        this.iconSize = fArr;
        float f4 = fArr[0];
        int i5 = 1;
        while (true) {
            float[] fArr2 = this.iconSize;
            if (i5 >= fArr2.length) {
                break;
            }
            f4 = Math.max(f4, fArr2[i5]);
            i5++;
        }
        int pxFromDp = ResourceUtils.pxFromDp(f4, displayMetrics);
        this.iconBitmapSize = pxFromDp;
        int[] iArr = {120, 160, 213, 240, 320, 480, 640};
        int i6 = 640;
        for (int i7 = 6; i7 >= 0; i7--) {
            int i8 = iArr[i7];
            if ((i8 * 48.0f) / 160.0f >= pxFromDp) {
                i6 = i8;
            }
        }
        this.fillResIconDpi = i6;
        this.iconTextSize = displayOption.textSizes;
        this.minCellSize = displayOption.minCellSize;
        this.borderSpaces = displayOption.borderSpaces;
        this.horizontalMargin = displayOption.horizontalMargin;
        this.numShownHotseatIcons = gridOption.numHotseatIcons;
        this.numDatabaseHotseatIcons = i4 == 1 ? gridOption.numDatabaseHotseatIcons : gridOption.numHotseatIcons;
        this.hotseatColumnSpan = gridOption.hotseatColumnSpan;
        this.hotseatBarBottomSpace = displayOption.hotseatBarBottomSpace;
        this.hotseatQsbSpace = displayOption.hotseatQsbSpace;
        this.allAppsStyle = gridOption.allAppsStyle;
        this.numAllAppsColumns = gridOption.numAllAppsColumns;
        this.numDatabaseAllAppsColumns = i4 == 1 ? gridOption.numDatabaseAllAppsColumns : gridOption.numAllAppsColumns;
        this.allAppsCellSize = displayOption.allAppsCellSize;
        this.allAppsBorderSpaces = displayOption.allAppsBorderSpaces;
        this.allAppsIconSize = displayOption.allAppsIconSizes;
        this.allAppsIconTextSize = displayOption.allAppsIconTextSizes;
        this.inlineQsb = gridOption.inlineQsb;
        this.transientTaskbarIconSize = displayOption.transientTaskbarIconSize;
        this.startAlignTaskbar = displayOption.startAlignTaskbar;
        Partner partner = Partner.get(context.getPackageManager(), "com.android.launcher3.action.PARTNER_CUSTOMIZATION");
        if (partner != null) {
            try {
                int intValue = partner.getIntValue("grid_num_rows");
                int intValue2 = partner.getIntValue("grid_num_columns");
                float dimenValue = partner.getDimenValue();
                if (intValue > 0 && intValue2 > 0) {
                    this.numRows = intValue;
                    this.numColumns = intValue2;
                }
                if (dimenValue > 0.0f) {
                    float[] fArr3 = this.iconSize;
                    int i9 = displayMetrics.densityDpi;
                    String[] strArr = Utilities.EMPTY_STRING_ARRAY;
                    fArr3[0] = dimenValue / (i9 / 160.0f);
                }
            } catch (Resources.NotFoundException e4) {
                Log.e("IDP", "Invalid Partner grid resource!", e4);
            }
        }
        ArrayList arrayList = new ArrayList();
        this.defaultWallpaperSize = new Point(info.currentSize);
        SparseArray sparseArray = new SparseArray();
        Iterator it = ((ArraySet) info.supportedBounds).iterator();
        while (it.hasNext()) {
            WindowBounds windowBounds = (WindowBounds) it.next();
            DeviceProfile.Builder builder = new DeviceProfile.Builder(context, this, info);
            builder.setIsMultiDisplay(i4 == 1);
            builder.setWindowBounds(windowBounds);
            builder.setDotRendererCache(sparseArray);
            arrayList.add(builder.build());
            int width = windowBounds.bounds.width();
            int height = windowBounds.bounds.height();
            Point point = this.defaultWallpaperSize;
            point.y = Math.max(point.y, height);
            float f5 = ((float) Math.min(width, height)) / (((float) info.getDensityDpi()) / 160.0f) < 720.0f ? 2.0f : 1.0076923f + ((width / height) * 0.30769226f);
            Point point2 = this.defaultWallpaperSize;
            point2.x = Math.max(point2.x, Math.round(f5 * width));
        }
        List unmodifiableList = Collections.unmodifiableList(arrayList);
        this.supportedProfiles = unmodifiableList;
        final int orElse = unmodifiableList.stream().filter(new Predicate() { // from class: com.android.launcher3.y
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (r1) {
                    case 0:
                        return ((DeviceProfile) obj).isTablet;
                    default:
                        return ((DeviceProfile) obj).isTablet;
                }
            }
        }).mapToInt(new C0492z()).min().orElse(0);
        this.supportedProfiles.stream().filter(new Predicate() { // from class: com.android.launcher3.y
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (r1) {
                    case 0:
                        return ((DeviceProfile) obj).isTablet;
                    default:
                        return ((DeviceProfile) obj).isTablet;
                }
            }
        }).forEach(new Consumer() { // from class: com.android.launcher3.A
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DeviceProfile deviceProfile = (DeviceProfile) obj;
                deviceProfile.numShownHotseatIcons = orElse;
                deviceProfile.recalculateHotseatWidthAndBorderSpace();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.android.launcher3.F] */
    private InvariantDeviceProfile(Context context) {
        this.devicePaddingId = -1;
        this.workspaceSpecsId = -1;
        this.workspaceSpecsTwoPanelId = -1;
        this.allAppsSpecsId = -1;
        this.allAppsSpecsTwoPanelId = -1;
        this.folderSpecsId = -1;
        this.folderSpecsTwoPanelId = -1;
        this.hotseatSpecsId = -1;
        this.hotseatSpecsTwoPanelId = -1;
        this.inlineQsb = new boolean[4];
        this.supportedProfiles = Collections.EMPTY_LIST;
        this.mChangeListeners = new ArrayList();
        String currentGridName = getCurrentGridName(context);
        String initGrid = initGrid(context, currentGridName);
        if (!initGrid.equals(currentGridName)) {
            LauncherPrefs.Companion companion = LauncherPrefs.Companion;
            LauncherPrefs.Companion.get(context).put(LauncherPrefs.GRID_NAME, initGrid);
        }
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        LockedUserState.Companion.get(context).runOnUserUnlocked(new D(1, context, this));
        ((DisplayController) DisplayController.INSTANCE.get(context)).setPriorityListener(new DisplayController.DisplayInfoChangeListener() { // from class: com.android.launcher3.F
            @Override // com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
            public final void onDisplayInfoChanged(Context context2, DisplayController.Info info, int i4) {
                InvariantDeviceProfile.d(InvariantDeviceProfile.this, context2, i4);
            }
        });
    }

    public InvariantDeviceProfile(Context context, String str) {
        this.devicePaddingId = -1;
        this.workspaceSpecsId = -1;
        this.workspaceSpecsTwoPanelId = -1;
        this.allAppsSpecsId = -1;
        this.allAppsSpecsTwoPanelId = -1;
        this.folderSpecsId = -1;
        this.folderSpecsTwoPanelId = -1;
        this.hotseatSpecsId = -1;
        this.hotseatSpecsTwoPanelId = -1;
        this.inlineQsb = new boolean[4];
        this.supportedProfiles = Collections.EMPTY_LIST;
        this.mChangeListeners = new ArrayList();
        String initGrid = initGrid(context, str);
        if (initGrid == null || !initGrid.equals(str)) {
            throw new IllegalArgumentException("Unknown grid name");
        }
    }

    public InvariantDeviceProfile(Context context, Display display) {
        this.devicePaddingId = -1;
        this.workspaceSpecsId = -1;
        this.workspaceSpecsTwoPanelId = -1;
        this.allAppsSpecsId = -1;
        this.allAppsSpecsTwoPanelId = -1;
        this.folderSpecsId = -1;
        this.folderSpecsTwoPanelId = -1;
        this.hotseatSpecsId = -1;
        this.hotseatSpecsTwoPanelId = -1;
        this.inlineQsb = new boolean[4];
        this.supportedProfiles = Collections.EMPTY_LIST;
        this.mChangeListeners = new ArrayList();
        INSTANCE.get(context);
        String currentGridName = getCurrentGridName(context);
        DisplayController.Info info = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo();
        int deviceType = getDeviceType(info);
        DisplayOption invDistWeightedInterpolate = invDistWeightedInterpolate(info, getPredefinedDeviceProfiles(context, currentGridName, deviceType, false), deviceType);
        DisplayController.Info info2 = new DisplayController.Info(context.createDisplayContext(display), new WindowManagerProxy(), new ArrayMap());
        int deviceType2 = getDeviceType(info2);
        DisplayOption invDistWeightedInterpolate2 = invDistWeightedInterpolate(info2, getPredefinedDeviceProfiles(context, currentGridName, deviceType2, false), deviceType2);
        DisplayOption displayOption = new DisplayOption(invDistWeightedInterpolate.grid);
        DisplayOption.q(displayOption, invDistWeightedInterpolate2);
        displayOption.iconSizes[0] = invDistWeightedInterpolate.iconSizes[0];
        for (int i4 = 1; i4 < 4; i4++) {
            displayOption.iconSizes[i4] = Math.min(invDistWeightedInterpolate.iconSizes[i4], invDistWeightedInterpolate2.iconSizes[i4]);
        }
        System.arraycopy(invDistWeightedInterpolate.minCellSize, 0, displayOption.minCellSize, 0, 4);
        System.arraycopy(invDistWeightedInterpolate.borderSpaces, 0, displayOption.borderSpaces, 0, 4);
        initGrid(context, info2, displayOption, deviceType2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class DisplayOption {
        private final PointF[] allAppsBorderSpaces;
        private final PointF[] allAppsCellSize;
        private final float[] allAppsIconSizes;
        private final float[] allAppsIconTextSizes;
        private final PointF[] borderSpaces;
        private final boolean canBeDefault;
        public final GridOption grid;
        private final float[] horizontalMargin;
        private final float[] hotseatBarBottomSpace;
        private final float[] hotseatQsbSpace;
        private final float[] iconSizes;
        private final PointF[] minCellSize;
        private final float minHeightDps;
        private final float minWidthDps;
        private final boolean[] startAlignTaskbar;
        private final float[] textSizes;
        private final float[] transientTaskbarIconSize;

        public DisplayOption(GridOption gridOption, Context context, AttributeSet attributeSet) {
            this.minCellSize = r2;
            this.borderSpaces = r3;
            this.horizontalMargin = r4;
            this.hotseatBarBottomSpace = r5;
            this.hotseatQsbSpace = r6;
            this.iconSizes = r7;
            this.textSizes = r8;
            this.allAppsCellSize = r9;
            this.allAppsIconSizes = r10;
            this.allAppsIconTextSizes = r11;
            this.allAppsBorderSpaces = r12;
            this.transientTaskbarIconSize = r13;
            this.startAlignTaskbar = r14;
            this.grid = gridOption;
            Resources resources = context.getResources();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ProfileDisplayOption);
            this.minWidthDps = obtainStyledAttributes.getFloat(69, 0.0f);
            this.minHeightDps = obtainStyledAttributes.getFloat(68, 0.0f);
            this.canBeDefault = obtainStyledAttributes.getBoolean(39, false);
            PointF pointF = new PointF(obtainStyledAttributes.getFloat(64, 0.0f), obtainStyledAttributes.getFloat(60, 0.0f));
            PointF[] pointFArr = {pointF, new PointF(obtainStyledAttributes.getFloat(65, pointF.x), obtainStyledAttributes.getFloat(61, pointFArr[0].y)), new PointF(obtainStyledAttributes.getFloat(67, pointFArr[0].x), obtainStyledAttributes.getFloat(63, pointFArr[0].y)), new PointF(obtainStyledAttributes.getFloat(66, pointFArr[0].x), obtainStyledAttributes.getFloat(62, pointFArr[0].y))};
            float f4 = obtainStyledAttributes.getFloat(27, 0.0f);
            float f5 = obtainStyledAttributes.getFloat(29, f4);
            float f6 = obtainStyledAttributes.getFloat(35, f4);
            float f7 = obtainStyledAttributes.getFloat(32, f4);
            PointF[] pointFArr2 = {new PointF(obtainStyledAttributes.getFloat(28, f4), obtainStyledAttributes.getFloat(38, f4)), new PointF(obtainStyledAttributes.getFloat(30, f5), obtainStyledAttributes.getFloat(31, f5)), new PointF(obtainStyledAttributes.getFloat(36, f6), obtainStyledAttributes.getFloat(37, f6)), new PointF(obtainStyledAttributes.getFloat(33, f7), obtainStyledAttributes.getFloat(34, f7))};
            PointF pointF2 = new PointF(obtainStyledAttributes.getFloat(16, pointFArr[0].x), obtainStyledAttributes.getFloat(12, pointFArr[0].y));
            PointF[] pointFArr3 = {pointF2, new PointF(obtainStyledAttributes.getFloat(17, pointF2.x), obtainStyledAttributes.getFloat(13, pointFArr3[0].y)), new PointF(obtainStyledAttributes.getFloat(19, pointFArr3[0].x), obtainStyledAttributes.getFloat(15, pointFArr3[0].y)), new PointF(obtainStyledAttributes.getFloat(18, pointFArr3[0].x), obtainStyledAttributes.getFloat(14, pointFArr3[0].y))};
            float f8 = obtainStyledAttributes.getFloat(0, f4);
            float f9 = obtainStyledAttributes.getFloat(2, f8);
            float f10 = obtainStyledAttributes.getFloat(8, f8);
            float f11 = obtainStyledAttributes.getFloat(5, f8);
            PointF[] pointFArr4 = {new PointF(obtainStyledAttributes.getFloat(1, f8), obtainStyledAttributes.getFloat(11, f8)), new PointF(obtainStyledAttributes.getFloat(3, f9), obtainStyledAttributes.getFloat(4, f9)), new PointF(obtainStyledAttributes.getFloat(9, f10), obtainStyledAttributes.getFloat(10, f10)), new PointF(obtainStyledAttributes.getFloat(6, f11), obtainStyledAttributes.getFloat(7, f11))};
            float f12 = obtainStyledAttributes.getFloat(52, 0.0f);
            float[] fArr = {f12, obtainStyledAttributes.getFloat(53, f12), obtainStyledAttributes.getFloat(55, fArr[0]), obtainStyledAttributes.getFloat(54, fArr[0])};
            float f13 = obtainStyledAttributes.getFloat(20, fArr[0]);
            float[] fArr2 = {f13, obtainStyledAttributes.getFloat(21, f13), obtainStyledAttributes.getFloat(23, fArr2[0]), obtainStyledAttributes.getFloat(22, fArr2[0])};
            float f14 = obtainStyledAttributes.getFloat(56, 0.0f);
            float[] fArr3 = {f14, obtainStyledAttributes.getFloat(57, f14), obtainStyledAttributes.getFloat(59, fArr3[0]), obtainStyledAttributes.getFloat(58, fArr3[0])};
            float f15 = obtainStyledAttributes.getFloat(24, fArr3[0]);
            float[] fArr4 = {f15, f15, obtainStyledAttributes.getFloat(26, f15), obtainStyledAttributes.getFloat(25, fArr4[0])};
            float f16 = obtainStyledAttributes.getFloat(40, 0.0f);
            float[] fArr5 = {f16, obtainStyledAttributes.getFloat(41, f16), obtainStyledAttributes.getFloat(43, fArr5[0]), obtainStyledAttributes.getFloat(42, fArr5[0])};
            ThreadLocal threadLocal = D.n.f278a;
            float f17 = obtainStyledAttributes.getFloat(44, resources.getFloat(R.dimen.hotseat_bar_bottom_space_default));
            float[] fArr6 = {f17, obtainStyledAttributes.getFloat(45, f17), obtainStyledAttributes.getFloat(47, fArr6[0]), obtainStyledAttributes.getFloat(46, fArr6[0])};
            float f18 = obtainStyledAttributes.getFloat(48, resources.getFloat(R.dimen.hotseat_qsb_space_default));
            float[] fArr7 = {f18, obtainStyledAttributes.getFloat(49, f18), obtainStyledAttributes.getFloat(51, fArr7[0]), obtainStyledAttributes.getFloat(50, fArr7[0])};
            float f19 = obtainStyledAttributes.getFloat(75, resources.getFloat(R.dimen.taskbar_icon_size));
            float[] fArr8 = {f19, obtainStyledAttributes.getFloat(76, f19), obtainStyledAttributes.getFloat(78, fArr8[0]), obtainStyledAttributes.getFloat(77, fArr8[0])};
            boolean z4 = obtainStyledAttributes.getBoolean(71, false);
            boolean z5 = obtainStyledAttributes.getBoolean(72, z4);
            boolean[] zArr = {z4, z5, obtainStyledAttributes.getBoolean(74, zArr[0]), obtainStyledAttributes.getBoolean(73, z5)};
            obtainStyledAttributes.recycle();
        }

        public static void q(DisplayOption displayOption, DisplayOption displayOption2) {
            for (int i4 = 0; i4 < 4; i4++) {
                float[] fArr = displayOption.iconSizes;
                fArr[i4] = fArr[i4] + displayOption2.iconSizes[i4];
                float[] fArr2 = displayOption.textSizes;
                fArr2[i4] = fArr2[i4] + displayOption2.textSizes[i4];
                PointF pointF = displayOption.borderSpaces[i4];
                float f4 = pointF.x;
                PointF pointF2 = displayOption2.borderSpaces[i4];
                pointF.x = f4 + pointF2.x;
                pointF.y += pointF2.y;
                PointF pointF3 = displayOption.minCellSize[i4];
                float f5 = pointF3.x;
                PointF pointF4 = displayOption2.minCellSize[i4];
                pointF3.x = f5 + pointF4.x;
                pointF3.y += pointF4.y;
                float[] fArr3 = displayOption.horizontalMargin;
                fArr3[i4] = fArr3[i4] + displayOption2.horizontalMargin[i4];
                float[] fArr4 = displayOption.hotseatBarBottomSpace;
                fArr4[i4] = fArr4[i4] + displayOption2.hotseatBarBottomSpace[i4];
                float[] fArr5 = displayOption.hotseatQsbSpace;
                fArr5[i4] = fArr5[i4] + displayOption2.hotseatQsbSpace[i4];
                PointF pointF5 = displayOption.allAppsCellSize[i4];
                float f6 = pointF5.x;
                PointF pointF6 = displayOption2.allAppsCellSize[i4];
                pointF5.x = f6 + pointF6.x;
                pointF5.y += pointF6.y;
                float[] fArr6 = displayOption.allAppsIconSizes;
                fArr6[i4] = fArr6[i4] + displayOption2.allAppsIconSizes[i4];
                float[] fArr7 = displayOption.allAppsIconTextSizes;
                fArr7[i4] = fArr7[i4] + displayOption2.allAppsIconTextSizes[i4];
                PointF pointF7 = displayOption.allAppsBorderSpaces[i4];
                float f7 = pointF7.x;
                PointF pointF8 = displayOption2.allAppsBorderSpaces[i4];
                pointF7.x = f7 + pointF8.x;
                pointF7.y += pointF8.y;
                float[] fArr8 = displayOption.transientTaskbarIconSize;
                fArr8[i4] = fArr8[i4] + displayOption2.transientTaskbarIconSize[i4];
                boolean[] zArr = displayOption.startAlignTaskbar;
                zArr[i4] = zArr[i4] | displayOption2.startAlignTaskbar[i4];
            }
        }

        public static void r(DisplayOption displayOption, float f4) {
            for (int i4 = 0; i4 < 4; i4++) {
                float[] fArr = displayOption.iconSizes;
                fArr[i4] = fArr[i4] * f4;
                float[] fArr2 = displayOption.textSizes;
                fArr2[i4] = fArr2[i4] * f4;
                PointF pointF = displayOption.borderSpaces[i4];
                pointF.x *= f4;
                pointF.y *= f4;
                PointF pointF2 = displayOption.minCellSize[i4];
                pointF2.x *= f4;
                pointF2.y *= f4;
                float[] fArr3 = displayOption.horizontalMargin;
                fArr3[i4] = fArr3[i4] * f4;
                float[] fArr4 = displayOption.hotseatBarBottomSpace;
                fArr4[i4] = fArr4[i4] * f4;
                float[] fArr5 = displayOption.hotseatQsbSpace;
                fArr5[i4] = fArr5[i4] * f4;
                PointF pointF3 = displayOption.allAppsCellSize[i4];
                pointF3.x *= f4;
                pointF3.y *= f4;
                float[] fArr6 = displayOption.allAppsIconSizes;
                fArr6[i4] = fArr6[i4] * f4;
                float[] fArr7 = displayOption.allAppsIconTextSizes;
                fArr7[i4] = fArr7[i4] * f4;
                PointF pointF4 = displayOption.allAppsBorderSpaces[i4];
                pointF4.x *= f4;
                pointF4.y *= f4;
                float[] fArr8 = displayOption.transientTaskbarIconSize;
                fArr8[i4] = fArr8[i4] * f4;
            }
        }

        public DisplayOption() {
            this(null);
        }

        public DisplayOption(GridOption gridOption) {
            this.minCellSize = new PointF[4];
            this.borderSpaces = new PointF[4];
            this.horizontalMargin = new float[4];
            this.hotseatBarBottomSpace = new float[4];
            this.hotseatQsbSpace = new float[4];
            this.iconSizes = new float[4];
            this.textSizes = new float[4];
            this.allAppsCellSize = new PointF[4];
            this.allAppsIconSizes = new float[4];
            this.allAppsIconTextSizes = new float[4];
            this.allAppsBorderSpaces = new PointF[4];
            this.transientTaskbarIconSize = new float[4];
            this.startAlignTaskbar = new boolean[4];
            this.grid = gridOption;
            this.minWidthDps = 0.0f;
            this.minHeightDps = 0.0f;
            this.canBeDefault = false;
            for (int i4 = 0; i4 < 4; i4++) {
                this.iconSizes[i4] = 0.0f;
                this.textSizes[i4] = 0.0f;
                this.borderSpaces[i4] = new PointF();
                this.minCellSize[i4] = new PointF();
                this.allAppsCellSize[i4] = new PointF();
                this.allAppsIconSizes[i4] = 0.0f;
                this.allAppsIconTextSizes[i4] = 0.0f;
                this.allAppsBorderSpaces[i4] = new PointF();
                this.transientTaskbarIconSize[i4] = 0.0f;
                this.startAlignTaskbar[i4] = false;
            }
        }
    }
}
