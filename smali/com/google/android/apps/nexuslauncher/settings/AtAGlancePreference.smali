.class public Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;


# instance fields
.field public final d:[F

.field public final e:La2/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 14
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->d:[F

    .line 15
    new-instance p1, La2/b;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 16
    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p0, v0}, La2/b;-><init>(Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->e:La2/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 10
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->d:[F

    .line 11
    new-instance p1, La2/b;

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 12
    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, La2/b;-><init>(Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->e:La2/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 6
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->d:[F

    .line 7
    new-instance p1, La2/b;

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 8
    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, La2/b;-><init>(Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->e:La2/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->d:[F

    .line 3
    new-instance p1, La2/b;

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 4
    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, La2/b;-><init>(Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->e:La2/b;

    return-void
.end method


# virtual methods
.method public final offsetHighlight(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5

    const v0, 0x7f0a004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->d:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-static {v0, p1, v1, v2, v4}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->d:[F

    aget v1, p0, v4

    aget p0, p0, v2

    invoke-virtual {p2, v1, p0}, Landroid/graphics/RectF;->offset(FF)V

    iget p0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p0, v1

    iput p0, p2, Landroid/graphics/RectF;->right:F

    iget p0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0704b0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    neg-float p0, p0

    invoke-virtual {p2, p0, p0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_0
    return-void
.end method

.method public final onAttached()V
    .locals 5

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartspace"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->e:La2/b;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v4, v2

    :cond_0
    if-eqz v4, :cond_1

    const v0, 0x7f130202

    goto :goto_0

    :cond_1
    const v0, 0x7f130201

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    const-class v0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference$SmartspaceConfirmation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    return-void
.end method

.method public final onBindViewHolder(LX/a0;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(LX/a0;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, LX/a0;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ASI_SMARTSPACE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.as"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const v4, 0x7f0a004f

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v4}, LX/a0;->a(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, La2/a;

    invoke-direct {p1, v3}, La2/a;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.google.android.googlequicksearchbox.action.ASSISTANT_SETTINGS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v5, "assistant_settings_feature"

    const-string v6, "ambient_assistant"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v3

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v4}, LX/a0;->a(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, La2/a;

    invoke-direct {p1, v2}, La2/a;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference;->e:La2/b;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
