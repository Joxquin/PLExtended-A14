package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.logger.LauncherAtomExtensions$DeviceSearchResultContainer;
import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchEntryPoint;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum d uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class OneSearchSessionManager$ZeroEntryState {

    /* renamed from: d  reason: collision with root package name */
    public static final OneSearchSessionManager$ZeroEntryState f6663d;

    /* renamed from: e  reason: collision with root package name */
    public static final OneSearchSessionManager$ZeroEntryState f6664e;

    /* renamed from: f  reason: collision with root package name */
    public static final OneSearchSessionManager$ZeroEntryState f6665f;

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ OneSearchSessionManager$ZeroEntryState[] f6666g;
    public final LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.EntryState entryStateForLogging;
    public final int id;
    public final OneSearchEntryPoint searchEntryState;

    static {
        LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.EntryState entryState = LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.EntryState.ALL_APPS;
        OneSearchEntryPoint oneSearchEntryPoint = OneSearchEntryPoint.ENTRY_POINT_ALL_APPS;
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState = new OneSearchSessionManager$ZeroEntryState("ZERO_ALL_APPS", 0, 1, entryState, oneSearchEntryPoint);
        f6663d = oneSearchSessionManager$ZeroEntryState;
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState2 = new OneSearchSessionManager$ZeroEntryState("ZERO_QSB", 1, 2, LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.EntryState.QSB, OneSearchEntryPoint.ENTRY_POINT_QSB);
        f6664e = oneSearchSessionManager$ZeroEntryState2;
        OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState3 = new OneSearchSessionManager$ZeroEntryState("ZERO_OVERVIEW", 2, 3, entryState, oneSearchEntryPoint);
        f6665f = oneSearchSessionManager$ZeroEntryState3;
        f6666g = new OneSearchSessionManager$ZeroEntryState[]{oneSearchSessionManager$ZeroEntryState, oneSearchSessionManager$ZeroEntryState2, oneSearchSessionManager$ZeroEntryState3};
    }

    public OneSearchSessionManager$ZeroEntryState(String str, int i4, int i5, LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.EntryState entryState, OneSearchEntryPoint oneSearchEntryPoint) {
        this.id = i5;
        this.entryStateForLogging = entryState;
        this.searchEntryState = oneSearchEntryPoint;
    }

    public static OneSearchSessionManager$ZeroEntryState valueOf(String str) {
        return (OneSearchSessionManager$ZeroEntryState) Enum.valueOf(OneSearchSessionManager$ZeroEntryState.class, str);
    }

    public static OneSearchSessionManager$ZeroEntryState[] values() {
        return (OneSearchSessionManager$ZeroEntryState[]) f6666g.clone();
    }
}
