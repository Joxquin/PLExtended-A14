.class public final synthetic Lcom/android/launcher3/popup/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/q;->d:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1

    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    new-instance v0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;

    iget-object p0, p0, Lcom/android/launcher3/popup/q;->d:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;-><init>(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    return-object v0
.end method
