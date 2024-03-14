.class public interface abstract Lcom/android/launcher3/util/FlagOp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_OP:Lcom/android/launcher3/util/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/i;

    invoke-direct {v0}, Lcom/android/launcher3/util/i;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/i;

    return-void
.end method


# virtual methods
.method public addFlag(I)Lcom/android/launcher3/util/j;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/util/j;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    return-object v0
.end method

.method public abstract apply(I)I
.end method

.method public removeFlag(I)Lcom/android/launcher3/util/j;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/util/j;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    return-object v0
.end method

.method public setFlag(IZ)Lcom/android/launcher3/util/FlagOp;
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/j;

    move-result-object p0

    :goto_0
    return-object p0
.end method
