.class public final La2/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, La2/b;->a:Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    iget-object p0, p0, La2/b;->a:Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "smartspace"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->h:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->a()I

    move-result p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->i:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->a()I

    move-result p1

    :goto_1
    const/16 v3, 0x160

    invoke-static {v3, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    const p1, 0x7f130202

    goto :goto_3

    :cond_3
    const p1, 0x7f130201

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
