.class public final synthetic Lcom/android/launcher3/model/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/model/WellbeingModel;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/WellbeingModel;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o1;->d:Lcom/android/launcher3/model/WellbeingModel;

    iput p2, p0, Lcom/android/launcher3/model/o1;->e:I

    iput-object p3, p0, Lcom/android/launcher3/model/o1;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/o1;->d:Lcom/android/launcher3/model/WellbeingModel;

    iget v1, p0, Lcom/android/launcher3/model/o1;->e:I

    iget-object p0, p0, Lcom/android/launcher3/model/o1;->f:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/WellbeingModel;->e(Lcom/android/launcher3/model/WellbeingModel;ILjava/lang/String;)V

    return-void
.end method
