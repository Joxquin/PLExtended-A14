.class public Lcom/android/launcher3/util/CellAndSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cellX:I

.field public cellY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 3
    iput v0, p0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    .line 5
    iput v0, p0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 8
    iput p2, p0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 9
    iput p3, p0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    .line 10
    iput p4, p0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lv/e;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
