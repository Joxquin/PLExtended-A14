.class public final Lcom/google/android/material/datepicker/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:J

.field public static final g:J


# instance fields
.field public final a:J

.field public final b:J

.field public c:Ljava/lang/Long;

.field public final d:I

.field public final e:Lcom/google/android/material/datepicker/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x76c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/z;->o(II)Lcom/google/android/material/datepicker/z;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/z;->i:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/H;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/b;->f:J

    const/16 v0, 0x834

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/z;->o(II)Lcom/google/android/material/datepicker/z;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/z;->i:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/H;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/b;->g:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/material/datepicker/b;->f:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/b;->a:J

    sget-wide v0, Lcom/google/android/material/datepicker/b;->g:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/b;->b:J

    new-instance v0, Lcom/google/android/material/datepicker/i;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/i;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/b;->e:Lcom/google/android/material/datepicker/c;

    iget-object v0, p1, Lcom/google/android/material/datepicker/d;->d:Lcom/google/android/material/datepicker/z;

    iget-wide v0, v0, Lcom/google/android/material/datepicker/z;->i:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/b;->a:J

    iget-object v0, p1, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/z;

    iget-wide v0, v0, Lcom/google/android/material/datepicker/z;->i:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/b;->b:J

    iget-object v0, p1, Lcom/google/android/material/datepicker/d;->g:Lcom/google/android/material/datepicker/z;

    iget-wide v0, v0, Lcom/google/android/material/datepicker/z;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/b;->c:Ljava/lang/Long;

    iget v0, p1, Lcom/google/android/material/datepicker/d;->h:I

    iput v0, p0, Lcom/google/android/material/datepicker/b;->d:I

    iget-object p1, p1, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    iput-object p1, p0, Lcom/google/android/material/datepicker/b;->e:Lcom/google/android/material/datepicker/c;

    return-void
.end method
