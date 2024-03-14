.class public final Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public alreadyRunningTaskId:I

.field public animateCurrentTaskDismissal:Z

.field private drawable:Landroid/graphics/drawable/Drawable;

.field public final intent:Landroid/content/Intent;

.field public final itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public final position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

.field public final splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->alreadyRunningTaskId:I

    iput-object p1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iput-object p5, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p6, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->view:Landroid/view/View;

    return-object p0
.end method
