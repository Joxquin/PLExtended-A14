.class public final LK/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LK/f;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:LK/b;

.field public static final h:LK/b;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:LK/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, LK/g;->c:LK/f;

    sput-object v0, LK/b;->d:LK/f;

    const/16 v1, 0x200e

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LK/b;->e:Ljava/lang/String;

    const/16 v1, 0x200f

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LK/b;->f:Ljava/lang/String;

    new-instance v1, LK/b;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, LK/b;-><init>(ZILK/f;)V

    sput-object v1, LK/b;->g:LK/b;

    new-instance v1, LK/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v0}, LK/b;-><init>(ZILK/f;)V

    sput-object v1, LK/b;->h:LK/b;

    return-void
.end method

.method public constructor <init>(ZILK/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LK/b;->a:Z

    iput p2, p0, LK/b;->b:I

    iput-object p3, p0, LK/b;->c:LK/e;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .locals 9

    new-instance v0, LK/a;

    invoke-direct {v0, p0}, LK/a;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    iput p0, v0, LK/a;->c:I

    move v1, p0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    iget v4, v0, LK/a;->c:I

    iget v5, v0, LK/a;->b:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_6

    if-nez v1, :cond_6

    iget-object v5, v0, LK/a;->a:Ljava/lang/CharSequence;

    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iput-char v4, v0, LK/a;->d:C

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, LK/a;->c:I

    invoke-static {v5, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    iget v5, v0, LK/a;->c:I

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v5

    iput v8, v0, LK/a;->c:I

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v4

    goto :goto_1

    :cond_1
    iget v4, v0, LK/a;->c:I

    add-int/2addr v4, v7

    iput v4, v0, LK/a;->c:I

    iget-char v4, v0, LK/a;->d:C

    const/16 v5, 0x700

    if-ge v4, v5, :cond_2

    sget-object v5, LK/a;->e:[B

    aget-byte v4, v5, v4

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v4

    :goto_1
    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v3, v3, -0x1

    move v2, p0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    move v2, v7

    goto :goto_0

    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    goto :goto_4

    :cond_4
    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    :goto_2
    move v1, v3

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v2, :cond_8

    move p0, v2

    goto :goto_6

    :cond_8
    :goto_3
    iget v2, v0, LK/a;->c:I

    if-lez v2, :cond_a

    invoke-virtual {v0}, LK/a;->a()B

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_4
    if-ne v1, v3, :cond_9

    :goto_4
    move p0, v7

    goto :goto_6

    :pswitch_5
    if-ne v1, v3, :cond_9

    :goto_5
    move p0, v6

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_a
    :goto_6
    return p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/CharSequence;)I
    .locals 6

    new-instance v0, LK/a;

    invoke-direct {v0, p0}, LK/a;-><init>(Ljava/lang/CharSequence;)V

    iget p0, v0, LK/a;->b:I

    iput p0, v0, LK/a;->c:I

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    move v2, v1

    :cond_0
    :goto_1
    iget v3, v0, LK/a;->c:I

    if-lez v3, :cond_6

    invoke-virtual {v0}, LK/a;->a()B

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/16 v5, 0x9

    if-eq v3, v5, :cond_0

    packed-switch v3, :pswitch_data_0

    if-nez v1, :cond_0

    goto :goto_4

    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    if-ne v1, v2, :cond_1

    goto :goto_2

    :pswitch_2
    if-ne v1, v2, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    :goto_2
    move p0, v4

    goto :goto_5

    :cond_3
    if-nez v1, :cond_0

    goto :goto_4

    :cond_4
    if-nez v2, :cond_5

    :goto_3
    const/4 p0, -0x1

    goto :goto_5

    :cond_5
    if-nez v1, :cond_0

    :goto_4
    move v1, v2

    goto :goto_0

    :cond_6
    :goto_5
    return p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c()LK/b;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget v1, LK/h;->a:I

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v0, LK/b;->h:LK/b;

    goto :goto_1

    :cond_1
    sget-object v0, LK/b;->g:LK/b;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, LK/b;->c:LK/e;

    invoke-virtual {v1, p1, v0}, LK/e;->b(Ljava/lang/CharSequence;I)Z

    move-result v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v2, p0, LK/b;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v4, -0x1

    sget-object v5, LK/b;->f:Ljava/lang/String;

    sget-object v6, LK/b;->e:Ljava/lang/String;

    const-string v7, ""

    iget-boolean p0, p0, LK/b;->a:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_2

    sget-object v2, LK/g;->b:LK/f;

    goto :goto_1

    :cond_2
    sget-object v2, LK/g;->a:LK/f;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, p1, v8}, LK/e;->b(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez p0, :cond_4

    if-nez v2, :cond_3

    invoke-static {p1}, LK/b;->a(Ljava/lang/CharSequence;)I

    move-result v8

    if-ne v8, v3, :cond_4

    :cond_3
    move-object v2, v6

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_6

    if-eqz v2, :cond_5

    invoke-static {p1}, LK/b;->a(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v4, :cond_6

    :cond_5
    move-object v2, v5

    goto :goto_2

    :cond_6
    move-object v2, v7

    :goto_2
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    if-eq v0, p0, :cond_9

    if-eqz v0, :cond_8

    const/16 v2, 0x202b

    goto :goto_3

    :cond_8
    const/16 v2, 0x202a

    :goto_3
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x202c

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    :cond_9
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_4
    if-eqz v0, :cond_a

    sget-object v0, LK/g;->b:LK/f;

    goto :goto_5

    :cond_a
    sget-object v0, LK/g;->a:LK/f;

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v2}, LK/e;->b(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez p0, :cond_c

    if-nez v0, :cond_b

    invoke-static {p1}, LK/b;->b(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v3, :cond_c

    :cond_b
    move-object v5, v6

    goto :goto_6

    :cond_c
    if-eqz p0, :cond_d

    if-eqz v0, :cond_e

    invoke-static {p1}, LK/b;->b(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v4, :cond_d

    goto :goto_6

    :cond_d
    move-object v5, v7

    :cond_e
    :goto_6
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_7
    return-object p0
.end method
