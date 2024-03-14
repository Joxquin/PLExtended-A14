.class public final Lf0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf0/c;->a:I

    iput p2, p0, Lf0/c;->b:I

    iput p3, p0, Lf0/c;->c:I

    iput p4, p0, Lf0/c;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lf0/c;->g:I

    const/4 p1, -0x1

    iput p1, p0, Lf0/c;->e:I

    iput p1, p0, Lf0/c;->f:I

    iput p1, p0, Lf0/c;->h:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/slice/widget/SliceView;->I:Lf0/L;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget v3, p0, Lf0/c;->a:I

    if-eq v3, v2, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const-string v4, "unknown mode: "

    invoke-static {v4, v3}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "MODE SHORTCUT"

    goto :goto_0

    :cond_1
    const-string v3, "MODE LARGE"

    goto :goto_0

    :cond_2
    const-string v3, "MODE SMALL"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actionType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TIME_PICK"

    const-string v4, "DATE_PICK"

    const-string v5, "SELECTION"

    const-string v6, "SLIDER"

    const-string v7, "TOGGLE"

    iget v8, p0, Lf0/c;->b:I

    packed-switch v8, :pswitch_data_0

    const-string v9, "unknown action: "

    invoke-static {v9, v8}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_0
    move-object v8, v3

    goto :goto_1

    :pswitch_1
    move-object v8, v4

    goto :goto_1

    :pswitch_2
    move-object v8, v5

    goto :goto_1

    :pswitch_3
    const-string v8, "SEE MORE"

    goto :goto_1

    :pswitch_4
    const-string v8, "CONTENT"

    goto :goto_1

    :pswitch_5
    move-object v8, v6

    goto :goto_1

    :pswitch_6
    const-string v8, "BUTTON"

    goto :goto_1

    :pswitch_7
    move-object v8, v7

    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", rowTemplateType="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lf0/c;->c:I

    packed-switch v8, :pswitch_data_1

    const-string v3, "unknown row type: "

    invoke-static {v3, v8}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_8
    move-object v3, v4

    goto :goto_2

    :pswitch_9
    move-object v3, v5

    goto :goto_2

    :pswitch_a
    const-string v3, "PROGRESS"

    goto :goto_2

    :pswitch_b
    move-object v3, v6

    goto :goto_2

    :pswitch_c
    move-object v3, v7

    goto :goto_2

    :pswitch_d
    const-string v3, "MESSAGING"

    goto :goto_2

    :pswitch_e
    const-string v3, "GRID"

    goto :goto_2

    :pswitch_f
    const-string v3, "LIST"

    goto :goto_2

    :pswitch_10
    const-string v3, "SHORTCUT"

    :goto_2
    :pswitch_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rowIndex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf0/c;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actionPosition="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf0/c;->g:I

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_4

    if-eq v3, v1, :cond_3

    const-string v1, "unknown position: "

    invoke-static {v1, v3}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, "CELL"

    goto :goto_3

    :cond_4
    const-string v1, "END"

    goto :goto_3

    :cond_5
    const-string v1, "START"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf0/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf0/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lf0/c;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
    .end packed-switch
.end method
