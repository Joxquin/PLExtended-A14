.class public final Lcom/android/launcher3/util/ContentWriter$CommitParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mDbController:Lcom/android/launcher3/model/ModelDbController;

.field final mSelectionArgs:[Ljava/lang/String;

.field final mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mDbController:Lcom/android/launcher3/model/ModelDbController;

    iput-object p2, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mWhere:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mSelectionArgs:[Ljava/lang/String;

    return-void
.end method
