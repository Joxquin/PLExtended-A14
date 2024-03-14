.class public final synthetic Lcom/android/launcher3/model/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:[Lcom/android/launcher3/model/data/AppInfo;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/F;->a:[Lcom/android/launcher3/model/data/AppInfo;

    iput p2, p0, Lcom/android/launcher3/model/F;->b:I

    iput-object p3, p0, Lcom/android/launcher3/model/F;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/F;->b:I

    iget-object v1, p0, Lcom/android/launcher3/model/F;->c:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/launcher3/model/F;->a:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p0, v0, v1, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->l([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
